$(document).ready(function(){
    $('#submit-comment').click(function(){
        // Get inputs values
        var name = $('#name-input').val();
        var email = $('#email-input').val();
        var comment = $('#comment-input').val();

        var boolVerify = true;

        // Set errors
        if (!name)
        {
            $('#name-input').addClass('red');
            $('#name-label').addClass('red');
            boolVerify = false;
        }
        else
        {
            $('#name-input').removeClass('red');
            $('#name-label').removeClass('red');
        }

        if (!isValidEmailAddress(email))
        {
            $('#email-input').addClass('red');
            $('#email-label').addClass('red');
            boolVerify = false;
        }
        else
        {
            $('#email-input').removeClass('red');
            $('#email-label').removeClass('red');
        }

        if (!comment)
        {
            $('#comment-input').addClass('red');
            $('#comment-label').addClass('red');
            boolVerify = false;
        }
        else
        {
            $('#comment-input').removeClass('red');
            $('#comment-label').removeClass('red');
        }


        if(boolVerify)
        {
            $('#form-error').hide();
        }
        else
        {
            $('#form-error').show();
            return false;
        }
    });

    // Check if valid email
    function isValidEmailAddress(emailAddress) {
        var pattern = new RegExp(/^(("[\w-+\s]+")|([\w-+]+(?:\.[\w-+]+)*)|("[\w-+\s]+")([\w-+]+(?:\.[\w-+]+)*))(@((?:[\w-+]+\.)*\w[\w-+]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][\d]\.|1[\d]{2}\.|[\d]{1,2}\.))((25[0-5]|2[0-4][\d]|1[\d]{2}|[\d]{1,2})\.){2}(25[0-5]|2[0-4][\d]|1[\d]{2}|[\d]{1,2})\]?$)/i);
        return pattern.test(emailAddress);
    };

});