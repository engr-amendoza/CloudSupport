/***** ON LOAD *****/
$(document).ready(function() {
    
    // set onchange handler for all user input fields 
    //setCurrentDateTime();
    
    var elem = document.getElementById("userInput");
    var childNodes = elem.childNodes;

    /*for (var i=0; i<childNodes.length; ++i) {
        childNodes[i].onchange = function() { onChangeEventHandler(event, "generatedPreviewFrame") };
        //childNodes[i].dispatchEvent(new Event('change'));
    }*/
   /// alert('ready()');


   /* $('.tablinks').click(function () {
        var 
    });*/
});


/* TABS */
function openTab(evt, tabName, elemID) {
    // Declare all variables
    var i, tabcontent, tablinks;
    
    // get status tab
    // alert(document.getElementsByClassName("active")[0].id);
   /// alert('tab opened' + ' ' + tabName);


    
    var elem = document.getElementById(elemID);
    
    // Get all elements with class="tabcontent" and hide them
    tabcontent = elem.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";

    return false; // to prevent page reload
}

/***** UPDATE EMAIL *****/
/*
function onChangeEventHandler(event, frameID) {
    var sourceElementID = event.target.id; // who triggered?
    var targetElementID = "";
    var value = "";
    var e = document.getElementById(sourceElementID);
    
    // get parent ID
    if (sourceElementID === null || sourceElementID === undefined || sourceElementID.length == 0) {
        sourceElementID = event.target.parentElement.getAttribute("id");
    }
    
    //alert(sourceElementID);
    
    switch (sourceElementID) {
        case 'platformSelect': 
            targetElementID = 'platformHeader';
            var platform = e.options[e.selectedIndex].value;
            value = platform + " Platform";
            updateEmailSubject(platform);
            updateAvailableLocations(platform, frameID);
            updateDocument(frameID, "platformName", platform)
            break;
        case 'startTime':
            targetElementID = "customersStartTime";
            var datetime = e.value;
            value = datetime.substring(0, 10) + "\n" + datetime.substring(11,16);
            break;
        case 'estReturnTime':
            targetElementID = "customersReturnTime";
            var datetime = e.value;
            value = datetime.substring(0, 10) + "\n" + datetime.substring(11,16);
            break;  
        case 'servicesImpacted':
            targetElementID = "serviceImpactedBody";
            value = e.value;
            break;
        case 'problemSummary':
            targetElementID = "problemSummaryBody";
            value = e.value;
            break;
        case 'locationCheckbox':
            //updateAvailableLocationsGenerator(frameID)
            updateAvailableLocations(null, frameID);
            return;
        default:
            targetElementID = 'platformHeader';
            var e = document.getElementById("platformSelect");
            var platform = e.options[e.selectedIndex].value;
            value = platform + " Platform";
            updateEmailSubject(platform);
            updateAvailablePlatforms();
            break;
            
    }
    
    //alert(frameID);
    //alert(targetElementID);
    
    updateDocument(frameID, targetElementID, value)
    
    //target.innerHTML = value; //old value
    
    //if (myElem != null) 
    //    alert('generatedPreviewFrame exist!');
    
   // document.getElementById(targetElementID).innerHTML = "terst";//document.getElementById(elementID).innerHTML; 
    
}

function disableImages(frameID, targetElement) {
    
}

function updateDocument(frameID, targetElementID, value) {
    var target = document.getElementById(frameID)
         .contentWindow.document.getElementById(targetElementID);
    target.textContent = value;
}

function updateAvailableLocations(platform, frameID) {
    var nodes = document.getElementById("locationCheckbox").getElementsByTagName("input");

    var excludeList = ["China", "Hong-Kong", "Korea"];

    
    //generator name == preview name
    var emailNodes = document.getElementById(frameID)
                .contentWindow.document.getElementById("emailLocations").getElementsByTagName("img");
    

    for (var i=0; i< nodes.length; ++i) {
        var node = nodes[i];
        var nodeVal = node.value;
        var emailNode = emailNodes[i+1]; // skip ACADEMIA/CUSTOMERS img
        var emailNodeSrc = emailNode.src;

        var newNode = getEmailNode(node, emailNode);
        
       // var target = document.getElementById(frameID)
       //         .contentWindow.document.getElementById(emailNode);
        
        
        if (platform != null && platform == "ACADEMIA" && excludeList.contains(nodeVal)) {
            node.disabled = true; 

           // target.style.visibility = 'hidden';
            emailNode.style.visibility = 'hidden';
        }
        else if(excludeList.contains(nodeVal)) {
            node.disabled = false; 
            // disable images
            emailNode.style.visibility = 'visible';
        }

        
        if (node.checked && !node.disabled) {
            // reset image
            //var target = document.getElementById(frameID)
            //    .contentWindow.document.getElementById("");
            //target.src = "images/red.png";
            //alert(emailNodeSrc);
            emailNodes[i+1].src = "images/red.png";
        }else if (!node.checked &&  !node.disabled) {
            emailNodes[i+1].src = "images/green.png";
        }
    }
}

function getEmailNode(src, dest) {
    for (var i=0; i<src.length; ++i) {
        for (var k=0; dest.length; ++k) {
            if (src[i] == dest[k]) {
                alert(src[i].value);
                alert(dest[k].value);
                return dest[k];
            }
                
        }
    }
    return null;
}

function updateEmailSubject(platform) {
    document.getElementById("emailSubject").value = platform + " Outage - 3DEXPERIENCE platform Public Cloud";
}

function setCurrentDateTime() {
    var date = new Date();
     $('input[type=datetime-local]').val(
         new Date(date.getTime() - (date.getTimezoneOffset() * 60000))
         .toJSON().slice(0,19));
}

function updateDatetime(datetime, targetElementID) {
    var elem = document.getElementById(targetElementID);
    //elem.chil
}

function iframeLoaded() {
    //alert('iframe loaded');
}
*/
/***** MISC *****/


var Ongoing = function() {
    this.outageHeader = "Outage ongoing on";
    this.openingStatement = "Hello, please be aware of the following incident:";
    this.topLeftIcon = "smallIconRed.png";
    this.returnTimeHeader = "Est. Return<br>Time";
}

var Recovery = function() {
    this.outageHeader = "Information update for outage on";
    this.openingStatement = "Hello, please be aware of the following update information:";
    this.topLeftIcon = "smallIconRed.png";
    this.returnTimeHeader = "New Est. <br>Return Time";
}

var Update = function() {
    this.outageHeader = "Outage recovered on";
    this.openingStatement = "Hello, please be aware the following incident is now closed:";
    this.topLeftIcon = "smallIconGreen.png";
    this.returnTimeHeader = "Recovery<br>Time";
}
