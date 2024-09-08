<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="Home HTML CSS Bootstrap Customer Survey"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="styles/survey.css"/>
    <style>
        .thanks-title {
            margin-top: 30px;
        }

        .infor-title {
            font-weight: bold;
            flex: 0 0 200px;
        }
    </style>
    <title>Customer Survey</title>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <!-- Thanks -->
            <div class="thanks-title">
                <h1>Thanks for joining our email list</h1>
            </div>
            <div class="thanks-text">
                Here is the information that you entered:
            </div>
            <br>

            <!-- Show Information -->
            <div class="d-flex">
                <label class="form-label infor-title">First Name</label>
                <span>${user.firstName}</span>
            </div>
            <div class="d-flex">
                <label class="form-label infor-title">Last Name</label>
                <span>${user.lastName}</span>
            </div>
            <div class="d-flex">
                <label class="form-label infor-title">Email</label>
                <span>${user.email}</span>
            </div>
            <div class="d-flex">
                <label class="form-label infor-title">Date of Birth</label>
                <span>${user.birth}</span>
            </div>
            <div class="d-flex">
                <label class="form-label infor-title">I'm know you through</label>
                <span>${user.hear}</span>
            </div>
            <div class="d-flex">
                <label class="form-label infor-title">Receive announcements</label>
                <c:choose>
                    <c:when test="${user.receiveLike == true && user.receiveSend == true}">
                        YES, I'd like that <br/>
                        YES, please send me email announcements
                    </c:when>
                    <c:when test="${user.receiveLike == true}">
                        YES, I'd like that
                    </c:when>
                    <c:when test="${user.receiveSend == true}">
                        YES, please send me email announcements
                    </c:when>
                    <c:otherwise>
                        No
                    </c:otherwise>
                </c:choose>
            </div>
            <div class="d-flex">
                <label class="form-label infor-title">Contact by</label>
                <span>${user.contact}</span>
            </div>
            <br>

            <!-- Back to Survey -->
            <div>
                To enter another email address, click on the Back button in your browser.
            </div>
            <br>
            <form action="" method="post">
                <input type="hidden" name="action" value="join">
                <button type="submit" class="btn btn-primary">Back</button>
            </form>
        </div>
    </div>
</div>
</body>

</html>