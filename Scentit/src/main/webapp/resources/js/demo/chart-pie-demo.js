
$(function () {
  $.ajax ({
    url : 'getAgeData',
    datatype : 'json',
    data : {program_nm : program_nm},
    success : function (res) {
      let ageData = []
      let label = ['10대', '20대', '30대', '40대', '50대', '60대이상']
      console.log(Object.values(res));

      // 이렇게도 가능
      // let ageData = [res.n10s_rt, res.n20s_rt, res.n30s_rt,
      //                res.n40s_rt, res.n50s_rt, res.n60s_above_rt]

      for (let i = 4; i <= 9; i++){
        ageData.push(Object.values(res)[i])
      }

      makePieChart(label, ageData);

    },
    error : function () {
      console.log("실패");
    }
  })
})




// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

function makePieChart(label, ageData) {
var ctx = document.getElementById("myPieChart");
var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: label,
    datasets: [{
      //data에 DB에서 조회한 값 가져오기
      data: ageData,
      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc', '#fd7e14', '#f6c23e', '#6f42c1'],
      hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf', '#fd7e14', '#f6c23e', '#6f42c1'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
  },
});
}