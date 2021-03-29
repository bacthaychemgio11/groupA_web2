   <style>
       * {
           padding: 0;
           margin: 0;
           font-family: sans-serif;
       }

       .hero {
           height: 100%;
           width: 100%;
           background-image: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url(public/images/banner.jpg);
           background-position: center;
           background-size: cover;
           position: absolute;
       }

       .form-box {
           width: 380px;
           height: 480px;
           position: relative;
           margin: 6% auto;
           background: #fff;
           padding: 5px;
           overflow: hidden;
       }

       .button-box {
           width: 220px;
           margin: 35px auto;
           position: relative;
           box-shadow: 0 0 20px 9px #ff61241f;
           border-radius: 30px;
       }

       .toggle-btn {
           padding: 10px 30px;
           cursor: pointer;
           background: transparent;
           border: 0;
           outline: none;
           position: relative;
       }

       #btn {
           top: 0;
           left: 0;
           position: absolute;
           width: 110px;
           height: 100%;

           background: rgb(30, 36, 0);
           background: linear-gradient(90deg, rgba(30, 36, 0, 0.981127485173757) 0%, rgba(238, 236, 10, 1) 0%, rgba(0, 255, 119, 1) 100%);
           border-radius: 30px;
           transition: .5s;
       }

       .social-icons {
           margin: 30px auto;
           text-align: center;
       }

       .social-icons img {
           width: 30px;
           margin: 0 12px;
           box-shadow: 0 0 20px 0 #7f7f7f3d;
           cursor: pointer;
           border-radius: 50%;
       }

       .input-group {
           top: 180px;
           position: absolute;
           width: 280px;
           transition: .5s;
       }

       .input-field {
           width: 100%;
           padding: 10px 0;
           margin: 5px 0;
           border-left: 0;
           border-top: 0;
           border-right: 0;
           border-bottom: 1px solid #999;
           outline: none;
           background: transparent;
       }

       .submit-btn {
           width: 85%;
           padding: 10px 30px;
           cursor: pointer;
           display: block;
           margin: auto;
           background: rgb(30, 36, 0);
           background: linear-gradient(90deg, rgba(30, 36, 0, 0.981127485173757) 0%, rgba(238, 236, 10, 1) 0%, rgba(0, 255, 119, 1) 100%);
           border: 0;
           outline: none;
           border-radius: 30px;
       }

       .check-box {
           margin: 30px 10px 30px 0;
       }

       span {
           color: #777;
           font-size: 12px;
           bottom: 68px;
           position: absolute;
       }

       #login {
           left: 50px;
       }

       #register {
           left: 450px;
       }

       .submit-btn:hover {
           box-shadow: 0 0 5px #00FF66,
               0 0 25px #00FF66,
               0 0 50px #00FF66,
               0 0 200px #00FF66;
           color: white;
       }
   </style>