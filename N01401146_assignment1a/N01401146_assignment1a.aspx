<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="N01401146_assignment1a.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rock Climing Incident Report</title>
</head>
<body>
    <h1>Rock Climbing Incident Report</h1>
    <form id="form1" runat="server">
        <section>
            <label for="firstname1">First name:</label>
            <input type="text" id="firstname1" name="fname" placeholder="i.e. Anna." />
            <label for="lastname1">Last name:</label>
            <input type="text" id="lastname1" name="lname" placeholder="i.e. Green" />
        </section>
        <section>
            <label for="indate">Date of Incident:</label>
            <input type="date" id="indate" name="idate" />
        </section>
        <section>
            <p>Did this happen to you?</p>
            <input type="radio" id="yes" name="yesno"/>
            <label for="yes">Yes</label>
            <input type="radio" id="no" name="yesno" />
            <label for="no">No</label>
        </section>
        <section>
            <p>If no, please fill out the following:</p>
            <label for="firstname2">First name:</label>
            <input type="text" id="firstname2" name="fname2" placeholder="i.e. John" />
            <label for="lastname2">Last name:</label>
            <input type="text" id="lastname2" name="lname2" placeholder="i.e. Smith" />
            <div>
                <label for="relation">Relationship to affected individual:</label>
                <select id="relationship">
                <option value="select">Please select</option>
                <option value="family">Family</option>
                <option value="friend">Friend</option>
                <option value="colleague">Colleague</option>
                <option value="stranger">No relation</option>
                <option value="other">Other</option>
                </select>
                <label for="other_description">If you choose other, please specify:</label>
                <input type="text" id="other_2" name="other2" />
            </div>       
         </section>
        <section> 
            <label>Please select the incident type: (please select all that apply)</label> 
        <div>
            <input type="checkbox" value="fall" id="incident1" name="incident_type" />  
            <label for="incident1">Fall</label>
        </div>
        <div>
            <input type="checkbox" value="equipment" id="incident2" name="incident_type" />
            <label for="incident2">Equipment malfunction</label>
        </div>
        <div>
            <input type="checkbox" value="illness" id="incident3" name="incident_type" />
            <label for="incident3">Illness</label>
        </div>
        <div>
            <input type="checkbox" value="other" id="incident4" name="incident_type" />
            <label for="incident4">Other</label>
        </div>
        <div>
            <label for="incident4">If you chose other, please specify:</label>
            <input type="text" id="incident_type" name="incident_type"/>
        </div>
        </section>
        <section>
            <label for="description">Please describe what occured in more detail:</label>
            <textarea id="description"></textarea>
        </section>
        <section>
            <p>Was anyone else involved?</p>
            <input type="radio" id="yes1" name="yesno1" />
            <label for="yes1">Yes</label>
            <input type="radio" id="no1" name="yesno1"/>
            <label for="no1">No</label>
        </section>
        <section>
            <p>If so, please tell us who:</p>
            <label for="involved1">Name:</label>
            <input type="text" id="involved" name="involved1" />
            <div>
                <label for="relation">Relationship to affected individual:</label>
                <select id="relation">
                    <option value="select">Please select</option>
                    <option value="family">Family</option>
                    <option value="friend">Friend</option>
                    <option value="colleague">Colleague</option>
                    <option value="stranger">No relation</option>
                    <option value="other">Other</option>
                </select>
                <label for="other2">If you choose other, please specify:</label>
                <input type="text" id="other2" name="other2" />
            </div>
        </section>
        <section>
            <label for="involved1">Please specify how they were involved:</label>
            <input type="radio" id="directly" name="direct" />
            <label for="directly">Directly</label>
            <input type="radio" id="indirectly" name="direct" />
            <label for="indirectly">Indirectly</label>
            <div>
                <textarea id="involved1"></textarea>
            </div>
        </section>
        <div>
            <label for="anyelse">Anything else you would like us to know?</label>
            <textarea id="anyelse"></textarea>
        </div>
        <div>
            <label for="initials">Please enter your initials to verify that everything you've entered is true:</label>
            <input type="text" id="initials" name="initials" />
        </div>
        <button type="submit" id="submit" name="submit">Submit</button>
    </form>
</body>
</html>
