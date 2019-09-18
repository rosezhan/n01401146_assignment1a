<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="N01401146_assignment1a.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rock Climbing Incident Report</title>
</head>
<body>
    <h1>Rock Climbing Incident Report</h1>
    <form id="form1" runat="server">
        <h2>Please fill out the following:</h2>
        <div>
            <label>First name:</label>
            <asp:Textbox runat="server" id="form_first_name"></asp:Textbox>
            <label>Last name:</label>
            <asp:Textbox runat="server" ID="form_last_name"></asp:Textbox>
        </div>
        <div>
            <label>Date of Incident:</label>
            <asp:Textbox runat="server" ID="incident_date"></asp:Textbox>
        </div>
        <section>
           <h3>Did this happen to you?</h3>
            <asp:RadioButtonList runat="server" id="incident_person">
                <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="no"></asp:ListItem>
            </asp:RadioButtonList>
        </section>
        <section>
            <h3>If no, please fill out the following:</h3>
            <label>First name:</label>
            <asp:TextBox runat="server" ID="no_first_name"></asp:TextBox>
            <label>Last name:</label>
            <asp:TextBox runat="server" ID="no_last_name"></asp:TextBox>
            <div>
                <h3>Relationship to affected individual:</h3>
                <asp:DropDownList runat="server">
                <asp:ListItem Text="Select" Value=""></asp:ListItem>
                <asp:ListItem Text="Family" Value="family"></asp:ListItem>
                <asp:ListItem Text="Friend" Value="friend"></asp:ListItem>
                <asp:ListItem Text="Colleague" Value="colleague"></asp:ListItem>
                <asp:ListItem Text="No Relation" Value="none"></asp:ListItem> 
                <asp:ListItem Text="Other" Value="other"></asp:ListItem> 
                </asp:DropDownList>
                <label>If you choose other, please specify:</label>
                <asp:TextBox runat="server" ID="other_specific"></asp:TextBox> 
            </div>       
         </section>
        <section>
            <h3>What happened?</h3>
            <label>Please select the incident type: (please select all that apply)</label> 
        <div>
            <asp:CheckBoxList runat="server" ID="incident_type">  
                <asp:ListItem Text="Fall" Value="fall"></asp:ListItem>
                <asp:ListItem Text="Equipment Malfunction" Value="equip_mal"></asp:ListItem>
                <asp:ListItem Text="Illness" Value="illness"></asp:ListItem>
                <asp:ListItem Text="Other" Value="other"></asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <div>
            <label>If you chose other, please specify:</label>
            <asp:Textbox runat="server" ID="other"></asp:Textbox>
        </div>
        </section>
        <div>
            <label>Please describe what occured in more detail:</label>
            <asp:Textbox runat="server" id="description""></asp:Textbox>
        </div>
        <section>
            <h3>Was anyone else involved?</h3>
            <asp:RadioButtonList runat="server" ID="other_involved">
                <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="no"></asp:ListItem>
            </asp:RadioButtonList>
        </section>
        <section>
            <h3>If so, please tell us who:</h3>
            <label>Name:</label>
            <asp:TextBox runat="server" ID="involved_name"></asp:TextBox>
            <div>
                <label>Relationship to affected individual:</label>
                <asp:DropDownList runat="server">
                    <asp:ListItem Text="Select" Value=""></asp:ListItem>
                    <asp:ListItem Text="Family" Value="family"></asp:ListItem>
                    <asp:ListItem Text="Friend" Value="friend"></asp:ListItem>
                    <asp:ListItem Text="Colleague" Value="colleague"></asp:ListItem>
                    <asp:ListItem Text="No Relation" Value="none"></asp:ListItem> 
                    <asp:ListItem Text="Other" Value="other"></asp:ListItem> 
                </asp:DropDownList>
                <label>If you choose other, please specify:</label>
                <asp:TextBox runat="server" ID="TextBox1"></asp:TextBox>
            </div>
        </section>
        <section>
            <h3>Please specify how they were involved:</h3>
            <asp:RadioButtonList runat="server" ID="how_involved">
                <asp:ListItem Text="Directly" Value="directly"></asp:ListItem>
                <asp:ListItem Text="Indirectly" Value="indirectly"></asp:ListItem>
            </asp:RadioButtonList>
            <div>
                <asp:TextBox runat="server" ID="direct_text"></asp:TextBox>
            </div>
        </section>
        <div>
            <label>Anything else you would like us to know?</label>
            <asp:Textbox runat="server" id="anyelse"></asp:Textbox>
        </div>
        <div>
            <label>Please enter your initials to verify that everything you've entered is true:</label>
            <asp:Textbox runat="server" id="initials"></asp:Textbox> 
        </div>
        <asp:Button runat="server" text="submit"/>
    </form>
</body>
</html>
