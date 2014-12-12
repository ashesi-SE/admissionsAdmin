/**
 * Created with JetBrains WebStorm.
 * User: kessir
 * Date: 1/18/13
 * Time: 3:20 PM
 * To change this template use File | Settings | File Templates.
 */

// CTask object to represent a row
function CTask(t,s,c,d){
    this.task=t;
    this.startDate=s;
    this.compDate =c;
    this.isDone= d;
    this.report = "";
}

//create 5 tasks and put them in the array for testing
var tasks = new Array();
tasks[0] = new CTask("find papers", "30/01/2013", "30/01/2013",false);
tasks[1] = new CTask("read papers", "31/01/2013", "05/02/2013",false);
tasks[2] = new CTask("review", "06/02/2013", "08/02/2013",false);
tasks[3] = new CTask("write lit review", "09/02/2013", "12/02/2013",false);
tasks[4] = new CTask("define research question", "13/02/2013", "20/03/2013",false);
var numberOfTasks = 5;


function addTask(){
    var taskName = document.getElementById("txtTask").value;
    var startDate = document.getElementById("txtStartDate").value;
    var compDate = document.getElementById("txtCompletionDate").value;

    if (validateInput(taskName,startDate,compDate) == false) {
        return;
    }

    addRow(taskName,startDate,compDate,false);

    document.getElementById("txtTask").value = '';
    document.getElementById("txtStartDate").value = '';
    document.getElementById("txtCompletionDate").value = '';
};

function addRow(taskDesc,startDate,compDate,done){
    var rowObj = document.getElementById('tableTask').insertRow(-1);
    rowObj.className="row";
    cell1 = rowObj.insertCell(-1);
    cell2 = rowObj.insertCell(-1);
    cell3 = rowObj.insertCell(-1);
    cell4 = rowObj.insertCell(-1);

    cell1.innerHTML= taskDesc;
    cell2.innerHTML= startDate;
    cell3.innerHTML= compDate;

    var chbx = document.createElement('input');
    chbx.setAttribute('type','checkbox');
    chbx.setAttribute('onclick','strikeThrough(this.parentElement.parentElement)');
    cell4.appendChild(chbx);
}

// This function takes as parameter a CTask object and adds it to the table
function addTaskToTable(objTask) {
    addRow(objTask.task,objTask.startDate,objTask.compDate,objTask.isDone);
}

// This method
function strikeThrough(row){
    if(row.getAttribute('class')=='done'){
        row.setAttribute('class','');
    }else{
        row.setAttribute('class','done');
    }

};

// This method removes all the rows that are done from the table
function clearTasks(){
    var taskList = document.getElementsByClassName("done");
    for( i = 0; i<taskList.length;i++){
        taskList.item(i).remove();
    }
};

function validateInput(taskDesc,startDate,compDate) {
    //4) write a code to validate the input for new task
    //if the task start date and completion date are not right, there  error message is shown and the task will not be added

    var rxTask = new RegExp("[a-z]");
   // var rxStart = new RegExp("[0-9]{2,2}/[0-9]{2,2}/[0-9]{4,4}");
   // var rxComp = new RegExp("[0-9]{2,2}/[0-9]{2,2}/[0-9]{4,4}");

    var returnValue=true;

    if(!rxTask.test(taskDesc)){
        // showError("Invalid task description");
        document.getElementById("txtTask").parentElement.className="error" ;
        returnValue = false;
    }else{
        document.getElementById("txtTask").parentElement.className="" ;
    }

    //No more validation for date
    /*
    if(!rxStart.test(startDate)){
        // showError("Invalid start date");

        document.getElementById("txtStartDate").parentElement.className="error" ;
        returnValue = false;
    }else{
        document.getElementById("txtStartDate").parentElement.className="" ;
    }

    if(!rxComp.test(compDate)){
        //    showError("Invalid completion date");
        document.getElementById("txtCompletionDate").parentElement.className="error" ;
        returnValue = false;
    }else{
        document.getElementById("txtCompletionDate").parentElement.className="" ;
    }*/

    return returnValue;
};

function hidePopup(){
    divPopup.hidden="hidden";

    document.getElementById("txtReport").value="";
}

function clearTable() {
    //2)write a code that will remove all tasks rows, but not the header row
    //var rowList = document.getElementsByClassName("row");

    var tableObj= document.getElementById("tableTask");
    var numOfRows = tableObj.rows.length;

    for(i=numOfRows-1 ;i>0;i--){
       tableObj.deleteRow(i);
    }
}

function loadTable() {
    clearTable();
    for (i = 0; i < tasks.length; i++) {
        addTaskToTable(tasks[i]);
    }
}