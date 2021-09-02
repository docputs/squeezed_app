import * as functions from "firebase-functions";
import * as admin from "firebase-admin";

admin.initializeApp();

export const createUserAfterRegistration = functions.auth.user()
    .onCreate((user, _) => {
      return admin.firestore().collection("users").doc(user.uid).create({});
    });
