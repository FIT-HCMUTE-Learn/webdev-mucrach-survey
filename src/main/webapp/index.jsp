<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="keywords" content="Home HTML CSS Bootstrap Customer Survey"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="styles/survey.css"/>
    <title>Customer Survey</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <!-- Brand Logo -->
            <div class="logo">
                <img src="assets/murach_logo.png" width="120px" alt="Murach Logo" title="Murach Logo"/>
            </div>
            <br/>
            <!-- Survey Title -->
            <div>
                <h1>Survey</h1>
                If you have a moment, we'd appreciate it if you would fill out
                this survey.
            </div>
            <br/>

            <form action="SurveyServlet" method="post">
                <!-- Get Information -->
                <div>
                    <h4>Your Information:</h4>
                </div>
                <div class="d-flex align-items-center mb-3">
                    <label class="form-label infor-title" for="first-name">First Name</label>
                    <input class="form-control" type="text" id="first-name" name="first-name" required/>
                </div>
                <div class="d-flex align-items-center mb-3">
                    <label class="form-label infor-title" for="last-name">Last Name</label>
                    <input class="form-control" type="text" id="last-name" name="last-name" required/>
                </div>
                <div class="d-flex align-items-center mb-3">
                    <label class="form-label infor-title" for="email">Email</label>
                    <input class="form-control" type="email" id="email" name="email" required/>
                </div>
                <div class="d-flex align-items-center mb-3">
                    <label class="form-label infor-title" for="birth">Date of Birth</label>
                    <input class="form-control" type="date" id="birth" name="birth" required/>
                </div>
                <br/>

                <!-- How did you hear about us ? -->
                <div>
                    <h4>How did you hear about us?</h4>
                </div>
                <div>
                    <div class="form-check form-check-inline mb-2">
                        <input type="radio" class="form-check-input" name="hear" value="search" required/>
                        Search engineer
                    </div>
                    <div class="form-check form-check-inline mb-2">
                        <input type="radio" class="form-check-input" name="hear" value="mouth" required/>
                        Word of mouth
                    </div>
                    <div class="form-check form-check-inline mb-2">
                        <input type="radio" class="form-check-input" name="hear" value="social" required/>
                        Social Media
                    </div>
                    <div class="form-check form-check-inline mb-2">
                        <input type="radio" class="form-check-input" name="hear" value="other" required/>
                        Other
                    </div>
                </div>
                <br/>

                <!-- Receive Announcements -->
                <div>
                    <h4>
                        Would you like to receive announcements about new CDs and
                        special offers?
                    </h4>
                </div>
                <div>
                    <input class="form-check-input" type="checkbox" id="like" name="like" value="like"/>
                    <label class="form-label" for="like">YES, I'd like that</label>
                </div>
                <div>
                    <input class="form-check-input" type="checkbox" id="send" name="send" value="send"/>
                    <label class="form-label" for="send">YES, please send me email announcements</label>
                </div>

                <!-- Customer Contact -->
                <div class="d-flex align-items-center mb-3">
                    <label class="form-label contact-title">Please contact me by:</label>
                    <select class="form-select" name="receive" required>
                        <option value="email_portal">Email or postal mail</option>
                        <option value="email">Phone</option>
                        <option value="portal">In person</option>
                    </select>
                </div>
                <br/>

                <!-- Submit -->
                <div>
                    <input type="hidden" name="action" value="add">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
            <!-- form -->
        </div>
        <!-- col -->
    </div>
    <!-- row -->
</div>
<!-- container -->
</body>
</html>