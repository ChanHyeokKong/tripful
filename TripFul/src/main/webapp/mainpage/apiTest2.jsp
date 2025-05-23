<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>관광지 북마크 추가</title>
  <style>
    #map {
      height: 500px;
      width: 100%;
    }
  </style>
</head>
<input id="autocomplete" type="text" placeholder="관광지를 검색하세요" style="width: 300px;"/>
<div id="map" style="height: 500px;"></div>

<script>
  let map, marker, autocomplete;

  function initMap() {
    const defaultCenter = { lat: 37.5665, lng: 126.9780 }; // 서울

    map = new google.maps.Map(document.getElementById("map"), {
      center: defaultCenter,
      zoom: 13
    });

    marker = new google.maps.Marker({
      map: map
    });

    // ✅ 자동완성 객체 생성
    const input = document.getElementById("autocomplete");
    autocomplete = new google.maps.places.Autocomplete(input);

    // ✅ 장소 선택 시 동작
    autocomplete.addListener("place_changed", function () {
      const place = autocomplete.getPlace();

      if (!place.geometry) {
        alert("해당 장소 정보를 찾을 수 없습니다");
        return;
      }

      const location = place.geometry.location;

      // 지도 중심 이동 + 마커 이동
      map.setCenter(location);
      map.setZoom(16);
      marker.setPosition(location);

      // 선택된 장소의 좌표 콘솔에 출력
      console.log("선택된 장소 좌표:", location.lat(), location.lng());
    });
  }
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDpVlcErlSTHrCz7Y4h3_VM8FTMkm9eXAc&libraries=places&callback=initMap" async defer></script>
<script type="text/javascript">
function initMap(): void {
  const map = new google.maps.Map(
    document.getElementById("map") as HTMLElement,
    {
      center: { lat: -33.8688, lng: 151.2195 },
      zoom: 13,
    }
  );

  const input = document.getElementById("pac-input") as HTMLInputElement;

  // Specify just the place data fields that you need.
  const autocomplete = new google.maps.places.Autocomplete(input, {
    fields: ["place_id", "geometry", "formatted_address", "name"],
  });

  autocomplete.bindTo("bounds", map);

  map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

  const infowindow = new google.maps.InfoWindow();
  const infowindowContent = document.getElementById(
    "infowindow-content"
  ) as HTMLElement;

  infowindow.setContent(infowindowContent);

  const marker = new google.maps.Marker({ map: map });

  marker.addListener("click", () => {
    infowindow.open(map, marker);
  });

  autocomplete.addListener("place_changed", () => {
    infowindow.close();

    const place = autocomplete.getPlace();

    if (!place.geometry || !place.geometry.location) {
      return;
    }

    if (place.geometry.viewport) {
      map.fitBounds(place.geometry.viewport);
    } else {
      map.setCenter(place.geometry.location);
      map.setZoom(17);
    }

    // Set the position of the marker using the place ID and location.
    // @ts-ignore This should be in @typings/googlemaps.
    marker.setPlace({
      placeId: place.place_id,
      location: place.geometry.location,
    });

    marker.setVisible(true);

    (
      infowindowContent.children.namedItem("place-name") as HTMLElement
    ).textContent = place.name as string;
    (
      infowindowContent.children.namedItem("place-id") as HTMLElement
    ).textContent = place.place_id as string;
    (
      infowindowContent.children.namedItem("place-address") as HTMLElement
    ).textContent = place.formatted_address as string;
    infowindow.open(map, marker);
  });
}

declare global {
  interface Window {
    initMap: () => void;
  }
}
window.initMap = initMap;
</script>
</body>
</html>