document.addEventListener("DOMContentLoaded", function () {
  console.log("oke tải index.js");

  document.getElementById("get1").addEventListener("click", function () {
    // Lấy ngày hiện tại
    const today = new Date();

    // Lấy ngày, tháng, năm từ đối tượng Date
    var day = String(today.getDate()).padStart(2, '0');
    const month = String(today.getMonth() + 1).padStart(2, '0'); // Tháng trong JavaScript bắt đầu từ 0
    const year = today.getFullYear();

    // Tạo một đối tượng Date đại diện cho thời gian hiện tại
    var currentTime = new Date();

    // Lấy giờ hiện tại
    var currentHour = currentTime.getHours();
    // Kiểm tra xem giờ hiện tại có lớn hơn 19h không
    if (currentHour < 19) {
        day = parseInt(day) -1;
    }
    // Tạo chuỗi định dạng DD-MM-YYYY
    const formattedDate = `${day}-${month}-${year}`;
    fetch(`/btl_acop/api.php?action=get_1&date=${formattedDate}`)
      .then((response) => {
        // Xử lý phản hồi từ máy chủ
        if (!response.ok) {
          throw new Error("Network response was not ok");
        }
        return response.json();
      })
      .then((json_data) => {
        document.getElementById("data1").innerHTML = JSON.stringify(json_data);
      });

  });

});

function randomNow(){
  fetch(`/btl_acop/api.php?action=get_random`)
  .then((response) => {
    // Xử lý phản hồi từ máy chủ
    if (!response.ok) {
      throw new Error("Network response was not ok");
    }
    return response.json();
  })
  .then((json_data) => {
    // Chế table
    console.log("datatanow: ",json_data)
    let kq = `
      <table class="table table-bordered table-success">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Sid</th>
                    <th>Name</th>
                    <th>Value</th>
                    <th>Time</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>$</td>
                    <td>${json_data[0].sid}</td>
                    <td>${json_data[0].name}</td>
                    <td>${json_data[0].value}</td>
                    <td>${json_data[0].time_update}</td>
                </tr>
            </tbody>
        </table>
    `;

    document.getElementById("table_now").innerHTML = kq;
  });
  }

  function random_all(){
    fetch("/btl_acop/api.php?action=get_all_ramdom")
      .then((response) => {
        // Xử lý phản hồi từ máy chủ
        if (!response.ok) {
          throw new Error("Network response was not ok");
        }
        return response.json();
      })
      .then((json_data) => {
        console.log(json_data);
        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
          // Chuyển đổi dữ liệu thành định dạng cho Google Charts
          var data = new google.visualization.DataTable();
          data.addColumn('datetime', 'Time');
          data.addColumn('number', 'Value');

          json_data.forEach(function (row) {
            data.addRow([new Date(row.time_update), parseInt(row.value)]);
          });

          var options = {
            title: 'Biểu đồ cảm biến random',
            curveType: 'function',
            legend  : { position: 'top' },
            hAxis: {
              title: 'Time'
            },
            vAxis: {
              title: 'Value'
            }
          };

          var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
          chart.draw(data, options);

        }
      })
      .catch((error) => {
        // Xử lý lỗi nếu có
        console.error("There was a problem with the fetch operation:", error);
      });
  }

  random_all();
  randomNow();
setInterval(() => {
  randomNow();
  random_all();
}, 1000*30);


