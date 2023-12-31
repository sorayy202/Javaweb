package domain;

public class User {


        public String getUsername() {
                return username;
        }

        public void setUsername(String username) {
                this.username = username;
        }

        public String getPassword() {
                return password;
        }

        public void setPassword(String password) {
                this.password = password;
        }

        public String getStatus() {
                return status;
        }

        public void setStatus(String status) {
                this.status = status;
        }

        public String getFaceimg() {
                return faceimg;
        }

        public void setFaceimg(String faceimg) {
                this.faceimg = faceimg;
        }

        @Override
        public String toString() {
                return "User{" +
                        "username='" + username + '\'' +
                        ", password='" + password + '\'' +
                        ", status='" + status + '\'' +
                        ", faceimg='" + faceimg + '\'' +
                        '}';
        }

        private String username;
        private String password;
        private String status;
        private String faceimg;



}
