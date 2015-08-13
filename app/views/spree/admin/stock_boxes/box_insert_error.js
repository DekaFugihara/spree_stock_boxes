$("#field2 .check").html("<img src='/assets/admin/not.png'>");

$("#show-last-item").html("<h1 style='text-align:center;margin-top:150px;font-size:3em;'>Erro na leitura do SKU:<span class='red'><%= @last_entry %></span></h1>");

$("#stock_items").val("<%= @old_value %>");
$("#stock_items").focus();