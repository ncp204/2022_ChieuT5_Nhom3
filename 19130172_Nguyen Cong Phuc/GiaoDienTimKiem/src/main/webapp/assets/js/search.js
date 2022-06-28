const search = $("#seatchItem");
const baseURL = "http://localhost:8080/Search_war_exploded"
search.click(function (e) {
    e.preventDefault();

    const keyword = $("#keyword").val().trim();

    $.ajax({
        // url: baseURL + addToCard.attr("href"),
        url: baseURL + "/search",
        type: 'POST',
        dataType: 'application/json',
        data: {
           keyword
        }
    })
})