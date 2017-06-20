<%@ Page Language="C#" %>
<script runat=server>
protected String GetJSONFromQueryString()
{
    string jsonString = "";
    string contentId = Request.QueryString["contentId"];
    if(!string.IsNullOrEmpty(contentId)){
        return "{\"contentId\" : \"" + contentId + "\"}";
    } 
    string fragmentType = "Brand-Page-Tile";
    string brandName = Request.QueryString["brandName"];
    if (!string.IsNullOrEmpty(brandName)) {
        return "{\"fragmentType\" : \"" + fragmentType + "\",\"brandName\" :\"" + brandName + "\",\"category\" :\"\"}";
    }

    string category = Request.QueryString["category"];
    if (!string.IsNullOrEmpty(category))
    {
        return "{\"fragmentType\" : \"" + fragmentType + "\",\"brandName\" :\"\",\"category\" :\"" + category + "\"}";
    }
    
    return jsonString;
}
</script>
<link rel="import" href="http://10.67.90.232:88/src/brand-featurecard/brand-featurecard.html">
<brand-featurecard filter='<%= GetJSONFromQueryString()%>' ></brand-featurecard>

