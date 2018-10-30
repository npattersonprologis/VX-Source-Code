<%@ Register TagPrefix="wssuc" TagName="LinksTable" src="/_controltemplates/15/LinksTable.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="/_controltemplates/15/InputFormSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="/_controltemplates/15/InputFormControl.ascx" %> <%@ Register TagPrefix="wssuc" TagName="LinkSection" src="/_controltemplates/15/LinkSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="/_controltemplates/15/ButtonSection.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ActionBar" src="/_controltemplates/15/ActionBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBar" src="/_controltemplates/15/ToolBar.ascx" %> <%@ Register TagPrefix="wssuc" TagName="ToolBarButton" src="/_controltemplates/15/ToolBarButton.ascx" %> <%@ Register TagPrefix="wssuc" TagName="Welcome" src="/_controltemplates/15/Welcome.ascx" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Page language="C#" MasterPageFile="~masterurl/default.master"  inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"     %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="OfficeServer" Namespace="Microsoft.Office.Server.WebControls" Assembly="Microsoft.Office.DocumentManagement, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePointSearchWebControls" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:EncodedLiteral runat="server" text="<%$Resources:dlcdm, DocSetHomepage_Title%>" EncodeMethod='HtmlEncode'/>
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
	<span id="idParentFolderName" style="display:none">&#160;</span>
	<span class="ms-pageTitle-separatorSpan">
		<SharePoint:ClusteredDirectionalSeparatorArrow runat="server" />
	</span>
    <SharePoint:CssRegistration ID="CssDMS" name="<% $SPUrl:~sitecollection/Style Library/VX.SIS2013/dms.css %>"
	    After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
	<span id="idDocsetName">&#160;</span>    
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderLeftNavBar" runat="server" Visible="false">
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <style type="text/css">
        #contentBox
        {
            margin-left: 10px; /* PlaceHolderLeftNavBar is not visible, margin-left shifts the main content to the left (default margin #contentBox is 220px)*/
        }        
    </style>
     <script type="text/javascript" src="<SharePointWebControls:EncodedLiteral runat='server' text='<% $SPUrl:~sitecollection/Style Library/VX.SIS2013/Resources/DMS/~language/Resources.js %>' EncodeMethod='HtmlEncode' />" ></script>   
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
    <WebPartPages:WebPartZone runat="server" PartChromeType="None" ID="WebPartZone_BreadCrumb" AllowPersonalization="false" AllowCustomization="false">
		<ZoneTemplate></ZoneTemplate>
	</WebPartPages:WebPartZone>
	<OfficeServer:DocSetWelcomePageControl runat="server" ID="idDocSet" />
	<div class="ms-table ms-fullWidth">
        <div class="ms-tableRow">
            <div class="vx-tableCol-70 ms-verticalAlignTop">
            	<div class="vx-webPartSpace vx-webPartSpaceLeft"><!--support for generic and specific margin accros webparts-->	
                	<WebPartPages:WebPartZone runat="server" PartChromeType="None" ID="WebPartZone_TopLeft" AllowPersonalization="false" AllowCustomization="true">
					    <ZoneTemplate></ZoneTemplate>
				    </WebPartPages:WebPartZone>
            	</div>               

            </div>            
            <div class="vx-tableCol-30 vx-paddingLeft20 ms-verticalAlignTop">
            	<div class="vx-webPartSpace vx-webPartSpaceRight"><!--support for generic and specific margin accros webparts-->
                    <WebPartPages:WebPartZone runat="server" PartChromeType="None" ID="WebPartZone_TopRight" AllowPersonalization="false" AllowCustomization="true">
					    <ZoneTemplate></ZoneTemplate>
				    </WebPartPages:WebPartZone>
				</div>

                 <%--Related documents--%>                
                <h2 id="relatedDocuments" class="vx-paddingTop15"></h2>
                <SharePointSearchWebControls:ResultScriptWebPart Id="relatedDocumentsWebpart" runat="server" 
	    			ChromeType="None"  RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/VX.SIS2013/VX_Control_RelatedInformation_Results.js"
		        	ShowLanguageOptions="False" ShowAdvancedLink="False" ResultsPerPage="10" ShowPaging="True" ShowResultCount="False" ShowAlertMe="False" ShowPreferencesLink="False"
				    DataProviderJSON="{'QueryGroupName':'Default','QueryPropertiesTemplateUrl':'sitesearch://webroot','IgnoreQueryPropertiesTemplateUrl':false,'SourceID':'8413cd39-2156-4e00-b54d-11efd9abdb89','SourceName':'Local SharePoint Results','SourceLevel':'Ssa','CollapseSpecification':'','QueryTemplate':'{Page.ContainerID}  IsDocument=1  -Path:{Site.URL}','FallbackSort':null,'FallbackSortJson':'null','RankRules':null,'RankRulesJson':'null','AsynchronousResultRetrieval':false,'SendContentBeforeQuery':true,'BatchClientQuery':true,'FallbackLanguage':-1,'FallbackRankingModelID':'','EnableStemming':true,'EnablePhonetic':false,'EnableNicknames':false,'EnableInterleaving':true,'EnableQueryRules':true,'EnableOrderingHitHighlightedProperty':false,'HitHighlightedMultivaluePropertyLimit':-1,'IgnoreContextualScope':false,'ScopeResultsToCurrentSite':false,'TrimDuplicates':true,'Properties':{'ListId':'e2128297-3cc2-4269-9556-3ce8b79bb5cb','ListItemId':2},'PropertiesJson':'{\'ListId\':\'e2128297-3cc2-4269-9556-3ce8b79bb5cb\',\'ListItemId\':2}','ClientType':'','UpdateAjaxNavigate':true,'SummaryLength':180,'DesiredSnippetLength':90,'PersonalizedQuery':false,'FallbackRefinementFilters':null,'IgnoreStaleServerQuery':false,'RenderTemplateId':'DefaultDataProvider','AlternateErrorMessage':null,'Title':''}"
                    SelectedPropertiesJson="['Title','Path','Description','EditorOWSUSER','LastModifiedTime','CollapsingStatus','DocId','HitHighlightedSummary','HitHighlightedProperties','FileExtension','ViewsLifeTime','ParentLink','FileType','IsContainer','SecondaryFileExtension','DisplayAuthor']" 
					ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/VX.SIS2013/VX_Item_RelatedInformation.js" />

         	</div>
            <div class="ms-clear"></div>
	    </div>        
    </div>
    <SharePoint:ScriptBlock runat="server">
        Type.registerNamespace('VXCompany')

        VXCompany.setTranslations = function _setTranslations() {
            var resources = new DMSResources();
            var relatedDocuments = document.getElementById('relatedDocuments');
            if (relatedDocuments != null) {
                relatedDocuments.innerHTML = resources.relatedDocuments;
            }
        }

        VXCompany.loadTranslations = function _loadTranslations() {
        
            var languageCode = SP.PageContextInfo.get_currentUICultureName();
            if (languageCode !== 'nl-NL' && languageCode !== 'en-US') {
                languageCode = 'en-US';
            }

            RegisterSod('Resources.js', _spPageContextInfo.siteAbsoluteUrl + '/Style%20Library/VX.SIS2013/Resources/DMS/' + languageCode + '/Resources.js');

            SP.SOD.executeOrDelayUntilScriptLoaded(VXCompany.setTranslations, 'Resources.js')
        }

        if (typeof asyncDeltaManager != "undefined") {
            asyncDeltaManager.add_endRequest(VXCompany.loadTranslations);
        } else {
            SP.SOD.executeFunc('sp.js', 'SP.PageContextInfo', VXCompany.loadTranslations);
        }
    </SharePoint:ScriptBlock>
       
</asp:Content>
