$(document).ready(function () {

    $("#financial_year").html('<option value="FY:2015-16">FY 2015-16</option> <option value="FY:2016-17">FY 2016-17</option> <option value="FY:2017-18">FY 2017-18</option>');
    $('#company').html('<option value="unspecified">unspecified</option> <option value="ICICI">Icici</option> <option value="SBI">Sbi</option>');

    $('#company').on('change', function () {
        var valueSelected = this.value;
        $('#scheme').html('<option value="Top 100">Top 100 funds</option> <option value="SBI Blue chip">Sbi Blue Chip</option>')
    });

    function formatDate(id) {
        $('#'+id).datetimepicker({
            format: 'YYYY-MM-DDTHH:mm:ss',
            widgetPositioning: {horizontal: 'right', vertical: 'bottom'},
            minDate: moment().startOf('day')
        });
    }
    formatDate("applicableFrom");
    formatDate("investedOn");
});