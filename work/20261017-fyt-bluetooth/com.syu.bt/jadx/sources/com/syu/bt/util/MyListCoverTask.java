package com.syu.bt.util;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.syu.bt.App_Bt;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class MyListCoverTask extends AsyncTask<String, Integer, HashMap<String, Bitmap>> {
    HashMap<String, Bitmap> Album = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public HashMap<String, Bitmap> doInBackground(String... arg0) {
        this.Album.clear();
        App_Bt.myPaths.clear();
        for (int i = 0; i < arg0.length; i++) {
            Bitmap bitmap = BTUtil.getInstance().getHeadIco(arg0[i]);
            this.Album.put(arg0[i], bitmap);
        }
        return this.Album;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(HashMap<String, Bitmap> bit) {
        super.onPostExecute(bit);
        App_Bt.invilatePlayList(bit);
    }
}
