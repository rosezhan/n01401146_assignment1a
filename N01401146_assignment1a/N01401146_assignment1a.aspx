<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="N01401146_assignment1a.aspx.cs" Inherits="N01401146_assignment1a.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rock Climbing Incident Report</title>
</head>
<body>
    <h1>Rock Climbing Incident Report</h1>
    <form id="incident_form" runat="server">
        <h2>Please fill out the following:</h2>
        <div>
            <label>First name:</label>
            <asp:Textbox runat="server" id="incident_first_name"></asp:Textbox>
            <asp:RequiredFieldValidator runat="server" 
                EnableClientScript="true" 
                ErrorMessage="Please enter your first name." 
                ControlToValidate="incident_first_name">
            </asp:RequiredFieldValidator>
            <label>Last name:</label>
            <asp:Textbox runat="server" ID="incident_last_name"></asp:Textbox>
            <asp:RequiredFieldValidator runat="server" 
                EnableClientScript="true" 
                ErrorMessage="Please enter your last name." 
                ControlToValidate="incident_last_name">
            </asp:RequiredFieldValidator>
        </div>
        <div>
            <label>Date of Incident (dd/mm/yy):</label>
            <asp:Textbox runat="server" ID="incident_date"></asp:Textbox>
            <asp:CompareValidator runat="server" 
                Type="Date" 
                Operator="DataTypeCheck" 
                ErrorMessage="Please enter a valid date." 
                ControlToValidate="incident_date">
            </asp:CompareValidator> 
            <!-- Date check validator referenced from: https://stackoverflow.com/questions/939802/date-validation-with-asp-net-validator/939852#939852 
                Author is Shoban, with edits from David Clarke. Accessed on Sunday, September 22,2019 -->
        </div>
        <div>
           <h3>Did this happen to you?</h3>
            <asp:DropDownList runat="server" id="incident_person">
                <asp:ListItem Text="--Please select--" Value=""></asp:ListItem>
                <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="no"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" 
                ControlToValidate="incident_person" 
                EnableClientScript="true" 
                ErrorMessage="Please select yes or no">
            </asp:RequiredFieldValidator>
        </div>
        <div>
            <h3>If no, please fill out the following:</h3>
            <label>First name:</label>
            <asp:TextBox runat="server" ID="incident_no_first_name"></asp:TextBox>
            <label>Last name:</label>
            <asp:TextBox runat="server" ID="incident_no_last_name"></asp:TextBox>
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
                <asp:TextBox runat="server" ID="incident_other_specific"></asp:TextBox> 
            </div>       
         </div>
        <div>
            <h3>What happened?</h3>
            <label>Please select the incident type:</label> 
        <div>
            <asp:DropDownList runat="server" ID="incident_type">  
                <asp:ListItem Text="--Please Select--" Value=""></asp:ListItem>
                <asp:ListItem Text="Fall" Value="fall"></asp:ListItem>
                <asp:ListItem Text="Equipment Malfunction" Value="equipment_malfunction"></asp:ListItem>
                <asp:ListItem Text="Illness" Value="illness"></asp:ListItem>
                <asp:ListItem Text="Other" Value="other"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" 
                ControlToValidate="incident_type" 
                EnableClientScript="true" 
                ErrorMessage="Please select a valid type">
            </asp:RequiredFieldValidator>
        </div>
        <div>
            <label>If you chose other, please specify:</label>
            <asp:Textbox runat="server" ID="incident_other"></asp:Textbox>
        </div>
        </div>
        <div>
            <label>Please describe what occured in more detail:</label>
            <asp:Textbox runat="server" id="incident_description"></asp:Textbox>
            <asp:RequiredFieldValidator runat="server"
                ControlToValidate="incident_description"
                EnableClientScript="true"
                ErrorMessage="Please describe the incident">
            </asp:RequiredFieldValidator>
        </div>
        <div>
            <h3>Was anyone else involved?</h3>
            <asp:RadioButtonList runat="server" ID="incident_other_involved">
                <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="no"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div>
            <h3>If so, please tell us who:</h3>
            <label>Name:</label>
            <asp:TextBox runat="server" ID="incident_involved_name"></asp:TextBox>
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
                <asp:TextBox runat="server" ID="incident_other_2"></asp:TextBox>
            </div>
        </div>
        <div>
            <h3>Please specify how they were involved:</h3>
            <asp:RadioButtonList runat="server" ID="incident_involvement">
                <asp:ListItem Text="Directly" Value="directly"></asp:ListItem>
                <asp:ListItem Text="Indirectly" Value="indirectly"></asp:ListItem>
            </asp:RadioButtonList>
            <div>
                <asp:TextBox runat="server" ID="incident_involvement_2"></asp:TextBox>
            </div>
        </div>
        <div>
            <label>Anything else you would like us to know?</label>
            <asp:Textbox runat="server" id="incident_knowledge"></asp:Textbox>
        </div>
        <div>
            <label>Please enter phone number that we may contact you at once we've reached a decision:</label>
            <asp:Textbox runat="server" id="incident_contact_number"></asp:Textbox>
            <asp:RegularExpressionValidator runat="server" 
                EnableClientScript="true" 
                ControlToValidate="incident_contact_number" 
                ValidationExpression="[(]{0,1}[0-9]{3}[)]{0,1}(\s*|\-+)[0-9]{3}(\s*|\-+)[0-9]{4}" 
                ErrorMessage="Please enter a valid phone number.">
            </asp:RegularExpressionValidator> 
            <!-- Validation expression taken from in-class example for phone numbers. Written by Christine Bittle. 
                I don't completely understand what the expression means. One can tell that the expression references the different phone number patterns, 
                from valid symbols, to the number of numbers allowed for a string. Accessed on Sunday, September 22, 2019-->
        </div>
        <div>
            <label>Please enter your initials to verify that everything you've entered is true:</label>
            <asp:Textbox runat="server" id="incident_initials"></asp:Textbox> 
            <asp:RequiredFieldValidator runat="server" 
                ControlToValidate="incident_initials" 
                ErrorMessage="Please enter your initials">
            </asp:RequiredFieldValidator>
        </div>
        <div id="incident_summary" runat="server">

        </div>
        <asp:ValidationSummary runat="server" ShowSummary="true" />
        <asp:Button runat="server" text="submit"/>
    </form>
</body>
</html>
