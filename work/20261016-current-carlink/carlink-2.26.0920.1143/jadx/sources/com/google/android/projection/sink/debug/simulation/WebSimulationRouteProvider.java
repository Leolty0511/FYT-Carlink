package com.google.android.projection.sink.debug.simulation;

import android.util.Log;
import com.google.common.net.HttpHeaders;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class WebSimulationRouteProvider {
    private static final String TAG = "AHU.LOCATION";

    public static final class LatLngPoint {
        public final double lat;
        public final double lng;

        public LatLngPoint(double d2, double d3) {
            this.lat = d2;
            this.lng = d3;
        }
    }

    private WebSimulationRouteProvider() {
    }

    private static List<SimulationRoutePoint> createDrivingTrack(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("legs").getJSONObject(0).getJSONArray("steps");
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                double d2 = ((double) Integer.parseInt(jSONObject2.getJSONObject("distance").get("value").toString())) / ((double) Integer.parseInt(jSONObject2.getJSONObject("duration").get("value").toString()));
                for (LatLngPoint latLngPoint : decodePolyline(jSONObject2.getJSONObject("polyline").get("points").toString())) {
                    arrayList.add(new SimulationRoutePoint(latLngPoint.lat, latLngPoint.lng, d2));
                }
            }
            return arrayList;
        } catch (JSONException e2) {
            Log.e("AHU.LOCATION", "Exception", e2);
            return null;
        }
    }

    public static List<SimulationRoutePoint> createPoints(String str, String str2, String str3) {
        JSONObject jsonRoute = getJsonRoute(str, str2, str3);
        if (jsonRoute == null) {
            return null;
        }
        return createDrivingTrack(jsonRoute);
    }

    private static ArrayList<LatLngPoint> decodePolyline(String str) {
        int i2;
        int i3;
        ArrayList<LatLngPoint> arrayList = new ArrayList<>();
        int length = str.length();
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < length) {
            int i7 = 0;
            int i8 = 0;
            while (true) {
                i2 = i4 + 1;
                int iCharAt = str.charAt(i4) - '?';
                i7 |= (iCharAt & 31) << i8;
                i8 += 5;
                if (iCharAt < 32) {
                    break;
                }
                i4 = i2;
            }
            int i9 = ((i7 & 1) != 0 ? ~(i7 >> 1) : i7 >> 1) + i5;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                i3 = i2 + 1;
                int iCharAt2 = str.charAt(i2) - '?';
                i10 |= (iCharAt2 & 31) << i11;
                i11 += 5;
                if (iCharAt2 < 32) {
                    break;
                }
                i2 = i3;
            }
            int i12 = i10 & 1;
            int i13 = i10 >> 1;
            if (i12 != 0) {
                i13 = ~i13;
            }
            i6 += i13;
            arrayList.add(new LatLngPoint(((double) i9) / 100000.0d, ((double) i6) / 100000.0d));
            i5 = i9;
            i4 = i3;
        }
        return arrayList;
    }

    private static URL getDirectionsUrl(String str, String str2, String str3) {
        try {
            return new URL("http://maps.googleapis.com/maps/api/directions/json?origin=" + URLEncoder.encode(str, "UTF-8") + "&destination=" + URLEncoder.encode(str2, "UTF-8") + "&mode=" + str3.toLowerCase(Locale.getDefault()) + "&sensor=false");
        } catch (UnsupportedEncodingException e2) {
            Log.e("AHU.LOCATION", "Exception", e2);
            return null;
        } catch (MalformedURLException e3) {
            Log.e("AHU.LOCATION", "Exception", e3);
            return null;
        }
    }

    private static JSONObject getJsonRoute(String str, String str2, String str3) {
        URL directionsUrl = getDirectionsUrl(str, str2, str3);
        if (directionsUrl == null) {
            return null;
        }
        try {
            URLConnection uRLConnectionOpenConnection = directionsUrl.openConnection();
            uRLConnectionOpenConnection.setRequestProperty(HttpHeaders.USER_AGENT, "Google Map Navigation Beta Demo Launcher");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(uRLConnectionOpenConnection.getInputStream()));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return new JSONObject(sb.toString()).getJSONArray("routes").getJSONObject(0);
                }
                sb.append(line);
            }
        } catch (IOException e2) {
            Log.e("AHU.LOCATION", "Exception", e2);
            return null;
        } catch (JSONException e3) {
            Log.e("AHU.LOCATION", "Exception", e3);
            return null;
        }
    }
}
