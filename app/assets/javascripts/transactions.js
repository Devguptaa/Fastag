// transactions.js

$(document).ready(function() {
    $('#filter-date-range-btn').on('click',function() {
        $('#modal-display').show();
    })
    $('#generate-report-btn').click(function() {
      const startDate = $('#start-date').val();
      const endDate = $('#end-date').val();
      $.ajax({
        url: '/transactions/filter_by_date_range',
        method: 'GET',
        data: { start_date: startDate, end_date: endDate },
        success: function(data) {
          $('#transactions').html(data);
          $('#dateModal').modal('hide');
        },
        error: function(xhr, status, error) {
          console.error(error);
        }
      });
    });
  });
  