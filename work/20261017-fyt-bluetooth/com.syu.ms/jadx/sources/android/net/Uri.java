package android.net;

import android.content.ContentResolver;
import android.net.dhcp.DhcpPacket;
import android.os.Environment;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.StrictMode;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import libcore.net.UriCodec;

/* JADX INFO: loaded from: classes.dex */
public abstract class Uri implements Parcelable, Comparable<Uri> {
    public static final Parcelable.Creator<Uri> CREATOR;
    private static final String DEFAULT_ENCODING = "UTF-8";
    public static final Uri EMPTY;
    private static final char[] HEX_DIGITS;
    private static final String LOG = Uri.class.getSimpleName();
    private static final String NOT_CACHED = new String("NOT CACHED");
    private static final int NOT_CALCULATED = -2;
    private static final int NOT_FOUND = -1;
    private static final String NOT_HIERARCHICAL = "This isn't a hierarchical URI.";
    private static final int NULL_TYPE_ID = 0;

    public static abstract class AbstractHierarchicalUri extends Uri {
        private volatile String host;
        private volatile int port;
        private Part userInfo;

        private AbstractHierarchicalUri() {
            super();
            this.host = Uri.NOT_CACHED;
            this.port = -2;
        }

        private Part getUserInfoPart() {
            Part part = this.userInfo;
            if (part != null) {
                return part;
            }
            Part partFromEncoded = Part.fromEncoded(parseUserInfo());
            this.userInfo = partFromEncoded;
            return partFromEncoded;
        }

        private String parseHost() {
            String encodedAuthority = getEncodedAuthority();
            if (encodedAuthority == null) {
                return null;
            }
            int iIndexOf = encodedAuthority.indexOf(64);
            int iIndexOf2 = encodedAuthority.indexOf(58, iIndexOf);
            int i2 = iIndexOf + 1;
            return Uri.decode(iIndexOf2 == -1 ? encodedAuthority.substring(i2) : encodedAuthority.substring(i2, iIndexOf2));
        }

        private int parsePort() {
            int iIndexOf;
            String encodedAuthority = getEncodedAuthority();
            if (encodedAuthority == null || (iIndexOf = encodedAuthority.indexOf(58, encodedAuthority.indexOf(64))) == -1) {
                return -1;
            }
            try {
                return Integer.parseInt(Uri.decode(encodedAuthority.substring(iIndexOf + 1)));
            } catch (NumberFormatException e2) {
                Log.w(Uri.LOG, "Error parsing port string.", e2);
                return -1;
            }
        }

        private String parseUserInfo() {
            int iIndexOf;
            String encodedAuthority = getEncodedAuthority();
            if (encodedAuthority == null || (iIndexOf = encodedAuthority.indexOf(64)) == -1) {
                return null;
            }
            return encodedAuthority.substring(0, iIndexOf);
        }

        @Override // android.net.Uri, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Uri uri) {
            return super.compareTo(uri);
        }

        @Override // android.net.Uri
        public final String getEncodedUserInfo() {
            return getUserInfoPart().getEncoded();
        }

        @Override // android.net.Uri
        public String getHost() {
            if (this.host != Uri.NOT_CACHED) {
                return this.host;
            }
            String host = parseHost();
            this.host = host;
            return host;
        }

        @Override // android.net.Uri
        public String getLastPathSegment() {
            List<String> pathSegments = getPathSegments();
            int size = pathSegments.size();
            if (size == 0) {
                return null;
            }
            return pathSegments.get(size - 1);
        }

        @Override // android.net.Uri
        public int getPort() {
            if (this.port != -2) {
                return this.port;
            }
            int port = parsePort();
            this.port = port;
            return port;
        }

        @Override // android.net.Uri
        public String getUserInfo() {
            return getUserInfoPart().getDecoded();
        }
    }

    public static abstract class AbstractPart {
        public volatile String decoded;
        public volatile String encoded;

        public static class Representation {
            public static final int BOTH = 0;
            public static final int DECODED = 2;
            public static final int ENCODED = 1;
        }

        public AbstractPart(String str, String str2) {
            this.encoded = str;
            this.decoded = str2;
        }

        public final String getDecoded() {
            if (this.decoded != Uri.NOT_CACHED) {
                return this.decoded;
            }
            String strDecode = Uri.decode(this.encoded);
            this.decoded = strDecode;
            return strDecode;
        }

        public abstract String getEncoded();

        public final void writeTo(Parcel parcel) {
            boolean z2 = this.encoded != Uri.NOT_CACHED;
            boolean z3 = this.decoded != Uri.NOT_CACHED;
            if (z2 && z3) {
                parcel.writeInt(0);
                parcel.writeString(this.encoded);
                parcel.writeString(this.decoded);
            } else if (z2) {
                parcel.writeInt(1);
                parcel.writeString(this.encoded);
            } else {
                if (!z3) {
                    throw new IllegalArgumentException("Neither encoded nor decoded");
                }
                parcel.writeInt(2);
                parcel.writeString(this.decoded);
            }
        }
    }

    public static final class Builder {
        private Part authority;
        private Part fragment;
        private Part opaquePart;
        private PathPart path;
        private Part query;
        private String scheme;

        private boolean hasSchemeOrAuthority() {
            Part part;
            return (this.scheme == null && ((part = this.authority) == null || part == Part.NULL)) ? false : true;
        }

        public Builder appendEncodedPath(String str) {
            return path(PathPart.appendEncodedSegment(this.path, str));
        }

        public Builder appendPath(String str) {
            return path(PathPart.appendDecodedSegment(this.path, str));
        }

        public Builder appendQueryParameter(String str, String str2) {
            this.opaquePart = null;
            String str3 = Uri.encode(str, null) + "=" + Uri.encode(str2, null);
            Part part = this.query;
            if (part == null) {
                this.query = Part.fromEncoded(str3);
                return this;
            }
            String encoded = part.getEncoded();
            if (encoded == null || encoded.length() == 0) {
                this.query = Part.fromEncoded(str3);
            } else {
                this.query = Part.fromEncoded(encoded + "&" + str3);
            }
            return this;
        }

        public Builder authority(Part part) {
            this.opaquePart = null;
            this.authority = part;
            return this;
        }

        public Uri build() {
            if (this.opaquePart != null) {
                if (this.scheme != null) {
                    return new OpaqueUri(this.scheme, this.opaquePart, this.fragment);
                }
                throw new UnsupportedOperationException("An opaque URI must have a scheme.");
            }
            PathPart pathPartMakeAbsolute = this.path;
            if (pathPartMakeAbsolute == null || pathPartMakeAbsolute == PathPart.NULL) {
                pathPartMakeAbsolute = PathPart.EMPTY;
            } else if (hasSchemeOrAuthority()) {
                pathPartMakeAbsolute = PathPart.makeAbsolute(pathPartMakeAbsolute);
            }
            return new HierarchicalUri(this.scheme, this.authority, pathPartMakeAbsolute, this.query, this.fragment);
        }

        public Builder clearQuery() {
            return query((Part) null);
        }

        public Builder encodedAuthority(String str) {
            return authority(Part.fromEncoded(str));
        }

        public Builder encodedFragment(String str) {
            return fragment(Part.fromEncoded(str));
        }

        public Builder encodedOpaquePart(String str) {
            return opaquePart(Part.fromEncoded(str));
        }

        public Builder encodedPath(String str) {
            return path(PathPart.fromEncoded(str));
        }

        public Builder encodedQuery(String str) {
            return query(Part.fromEncoded(str));
        }

        public Builder fragment(Part part) {
            this.fragment = part;
            return this;
        }

        public Builder opaquePart(Part part) {
            this.opaquePart = part;
            return this;
        }

        public Builder path(PathPart pathPart) {
            this.opaquePart = null;
            this.path = pathPart;
            return this;
        }

        public Builder query(Part part) {
            this.opaquePart = null;
            this.query = part;
            return this;
        }

        public Builder scheme(String str) {
            this.scheme = str;
            return this;
        }

        public String toString() {
            return build().toString();
        }

        public Builder fragment(String str) {
            return fragment(Part.fromDecoded(str));
        }

        public Builder opaquePart(String str) {
            return opaquePart(Part.fromDecoded(str));
        }

        public Builder authority(String str) {
            return authority(Part.fromDecoded(str));
        }

        public Builder path(String str) {
            return path(PathPart.fromDecoded(str));
        }

        public Builder query(String str) {
            return query(Part.fromDecoded(str));
        }
    }

    public static class HierarchicalUri extends AbstractHierarchicalUri {
        public static final int TYPE_ID = 3;
        private final Part authority;
        private final Part fragment;
        private final PathPart path;
        private final Part query;
        private final String scheme;
        private Part ssp;
        private volatile String uriString;

        private void appendSspTo(StringBuilder sb) {
            String encoded = this.authority.getEncoded();
            if (encoded != null) {
                sb.append("//");
                sb.append(encoded);
            }
            String encoded2 = this.path.getEncoded();
            if (encoded2 != null) {
                sb.append(encoded2);
            }
            if (this.query.isEmpty()) {
                return;
            }
            sb.append('?');
            sb.append(this.query.getEncoded());
        }

        private Part getSsp() {
            Part part = this.ssp;
            if (part != null) {
                return part;
            }
            Part partFromEncoded = Part.fromEncoded(makeSchemeSpecificPart());
            this.ssp = partFromEncoded;
            return partFromEncoded;
        }

        private String makeSchemeSpecificPart() {
            StringBuilder sb = new StringBuilder();
            appendSspTo(sb);
            return sb.toString();
        }

        private String makeUriString() {
            StringBuilder sb = new StringBuilder();
            String str = this.scheme;
            if (str != null) {
                sb.append(str);
                sb.append(':');
            }
            appendSspTo(sb);
            if (!this.fragment.isEmpty()) {
                sb.append('#');
                sb.append(this.fragment.getEncoded());
            }
            return sb.toString();
        }

        public static Uri readFrom(Parcel parcel) {
            return new HierarchicalUri(parcel.readString(), Part.readFrom(parcel), PathPart.readFrom(parcel), Part.readFrom(parcel), Part.readFrom(parcel));
        }

        @Override // android.net.Uri
        public Builder buildUpon() {
            return new Builder().scheme(this.scheme).authority(this.authority).path(this.path).query(this.query).fragment(this.fragment);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.net.Uri
        public String getAuthority() {
            return this.authority.getDecoded();
        }

        @Override // android.net.Uri
        public String getEncodedAuthority() {
            return this.authority.getEncoded();
        }

        @Override // android.net.Uri
        public String getEncodedFragment() {
            return this.fragment.getEncoded();
        }

        @Override // android.net.Uri
        public String getEncodedPath() {
            return this.path.getEncoded();
        }

        @Override // android.net.Uri
        public String getEncodedQuery() {
            return this.query.getEncoded();
        }

        @Override // android.net.Uri
        public String getEncodedSchemeSpecificPart() {
            return getSsp().getEncoded();
        }

        @Override // android.net.Uri
        public String getFragment() {
            return this.fragment.getDecoded();
        }

        @Override // android.net.Uri
        public String getPath() {
            return this.path.getDecoded();
        }

        @Override // android.net.Uri
        public List<String> getPathSegments() {
            return this.path.getPathSegments();
        }

        @Override // android.net.Uri
        public String getQuery() {
            return this.query.getDecoded();
        }

        @Override // android.net.Uri
        public String getScheme() {
            return this.scheme;
        }

        @Override // android.net.Uri
        public String getSchemeSpecificPart() {
            return getSsp().getDecoded();
        }

        @Override // android.net.Uri
        public boolean isHierarchical() {
            return true;
        }

        @Override // android.net.Uri
        public boolean isRelative() {
            return this.scheme == null;
        }

        @Override // android.net.Uri
        public String toString() {
            if (this.uriString != Uri.NOT_CACHED) {
                return this.uriString;
            }
            String strMakeUriString = makeUriString();
            this.uriString = strMakeUriString;
            return strMakeUriString;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(3);
            parcel.writeString(this.scheme);
            this.authority.writeTo(parcel);
            this.path.writeTo(parcel);
            this.query.writeTo(parcel);
            this.fragment.writeTo(parcel);
        }

        private HierarchicalUri(String str, Part part, PathPart pathPart, Part part2, Part part3) {
            super();
            this.uriString = Uri.NOT_CACHED;
            this.scheme = str;
            this.authority = Part.nonNull(part);
            this.path = pathPart == null ? PathPart.NULL : pathPart;
            this.query = Part.nonNull(part2);
            this.fragment = Part.nonNull(part3);
        }
    }

    public static class OpaqueUri extends Uri {
        public static final int TYPE_ID = 2;
        private volatile String cachedString;
        private final Part fragment;
        private final String scheme;
        private final Part ssp;

        public static Uri readFrom(Parcel parcel) {
            return new OpaqueUri(parcel.readString(), Part.readFrom(parcel), Part.readFrom(parcel));
        }

        @Override // android.net.Uri
        public Builder buildUpon() {
            return new Builder().scheme(this.scheme).opaquePart(this.ssp).fragment(this.fragment);
        }

        @Override // android.net.Uri, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Uri uri) {
            return super.compareTo(uri);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.net.Uri
        public String getAuthority() {
            return null;
        }

        @Override // android.net.Uri
        public String getEncodedAuthority() {
            return null;
        }

        @Override // android.net.Uri
        public String getEncodedFragment() {
            return this.fragment.getEncoded();
        }

        @Override // android.net.Uri
        public String getEncodedPath() {
            return null;
        }

        @Override // android.net.Uri
        public String getEncodedQuery() {
            return null;
        }

        @Override // android.net.Uri
        public String getEncodedSchemeSpecificPart() {
            return this.ssp.getEncoded();
        }

        @Override // android.net.Uri
        public String getEncodedUserInfo() {
            return null;
        }

        @Override // android.net.Uri
        public String getFragment() {
            return this.fragment.getDecoded();
        }

        @Override // android.net.Uri
        public String getHost() {
            return null;
        }

        @Override // android.net.Uri
        public String getLastPathSegment() {
            return null;
        }

        @Override // android.net.Uri
        public String getPath() {
            return null;
        }

        @Override // android.net.Uri
        public List<String> getPathSegments() {
            return Collections.emptyList();
        }

        @Override // android.net.Uri
        public int getPort() {
            return -1;
        }

        @Override // android.net.Uri
        public String getQuery() {
            return null;
        }

        @Override // android.net.Uri
        public String getScheme() {
            return this.scheme;
        }

        @Override // android.net.Uri
        public String getSchemeSpecificPart() {
            return this.ssp.getDecoded();
        }

        @Override // android.net.Uri
        public String getUserInfo() {
            return null;
        }

        @Override // android.net.Uri
        public boolean isHierarchical() {
            return false;
        }

        @Override // android.net.Uri
        public boolean isRelative() {
            return this.scheme == null;
        }

        @Override // android.net.Uri
        public String toString() {
            if (this.cachedString != Uri.NOT_CACHED) {
                return this.cachedString;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.scheme);
            sb.append(':');
            sb.append(getEncodedSchemeSpecificPart());
            if (!this.fragment.isEmpty()) {
                sb.append('#');
                sb.append(this.fragment.getEncoded());
            }
            String string = sb.toString();
            this.cachedString = string;
            return string;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(2);
            parcel.writeString(this.scheme);
            this.ssp.writeTo(parcel);
            this.fragment.writeTo(parcel);
        }

        private OpaqueUri(String str, Part part, Part part2) {
            super();
            this.cachedString = Uri.NOT_CACHED;
            this.scheme = str;
            this.ssp = part;
            this.fragment = part2 == null ? Part.NULL : part2;
        }
    }

    public static class Part extends AbstractPart {
        public static final Part NULL = new EmptyPart(null);
        public static final Part EMPTY = new EmptyPart(ProxyProperties.LOCAL_EXCL_LIST);

        public static class EmptyPart extends Part {
            public EmptyPart(String str) {
                super(str, str);
            }

            @Override // android.net.Uri.Part
            public boolean isEmpty() {
                return true;
            }
        }

        public static Part from(String str, String str2) {
            if (str == null) {
                return NULL;
            }
            if (str.length() == 0) {
                return EMPTY;
            }
            if (str2 == null) {
                return NULL;
            }
            return str2.length() == 0 ? EMPTY : new Part(str, str2);
        }

        public static Part fromDecoded(String str) {
            return from(Uri.NOT_CACHED, str);
        }

        public static Part fromEncoded(String str) {
            return from(str, Uri.NOT_CACHED);
        }

        public static Part nonNull(Part part) {
            return part == null ? NULL : part;
        }

        public static Part readFrom(Parcel parcel) {
            int i2 = parcel.readInt();
            if (i2 == 0) {
                return from(parcel.readString(), parcel.readString());
            }
            if (i2 == 1) {
                return fromEncoded(parcel.readString());
            }
            if (i2 == 2) {
                return fromDecoded(parcel.readString());
            }
            throw new IllegalArgumentException("Unknown representation: " + i2);
        }

        @Override // android.net.Uri.AbstractPart
        public String getEncoded() {
            if (this.encoded != Uri.NOT_CACHED) {
                return this.encoded;
            }
            String strEncode = Uri.encode(this.decoded);
            this.encoded = strEncode;
            return strEncode;
        }

        public boolean isEmpty() {
            return false;
        }

        private Part(String str, String str2) {
            super(str, str2);
        }
    }

    public static class PathPart extends AbstractPart {
        private PathSegments pathSegments;
        public static final PathPart NULL = new PathPart(null, null);
        public static final PathPart EMPTY = new PathPart(ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);

        private PathPart(String str, String str2) {
            super(str, str2);
        }

        public static PathPart appendDecodedSegment(PathPart pathPart, String str) {
            return appendEncodedSegment(pathPart, Uri.encode(str));
        }

        public static PathPart appendEncodedSegment(PathPart pathPart, String str) {
            String str2;
            if (pathPart == null) {
                return fromEncoded("/" + str);
            }
            String encoded = pathPart.getEncoded();
            if (encoded == null) {
                encoded = ProxyProperties.LOCAL_EXCL_LIST;
            }
            int length = encoded.length();
            if (length == 0) {
                str2 = "/" + str;
            } else if (encoded.charAt(length - 1) == '/') {
                str2 = encoded + str;
            } else {
                str2 = encoded + "/" + str;
            }
            return fromEncoded(str2);
        }

        public static PathPart from(String str, String str2) {
            if (str == null) {
                return NULL;
            }
            return str.length() == 0 ? EMPTY : new PathPart(str, str2);
        }

        public static PathPart fromDecoded(String str) {
            return from(Uri.NOT_CACHED, str);
        }

        public static PathPart fromEncoded(String str) {
            return from(str, Uri.NOT_CACHED);
        }

        public static PathPart makeAbsolute(PathPart pathPart) {
            String str;
            String str2;
            boolean z2 = pathPart.encoded != Uri.NOT_CACHED;
            String str3 = z2 ? pathPart.encoded : pathPart.decoded;
            if (str3 == null || str3.length() == 0 || str3.startsWith("/")) {
                return pathPart;
            }
            if (z2) {
                str = "/" + pathPart.encoded;
            } else {
                str = Uri.NOT_CACHED;
            }
            if (pathPart.decoded != Uri.NOT_CACHED) {
                str2 = "/" + pathPart.decoded;
            } else {
                str2 = Uri.NOT_CACHED;
            }
            return new PathPart(str, str2);
        }

        public static PathPart readFrom(Parcel parcel) {
            int i2 = parcel.readInt();
            if (i2 == 0) {
                return from(parcel.readString(), parcel.readString());
            }
            if (i2 == 1) {
                return fromEncoded(parcel.readString());
            }
            if (i2 == 2) {
                return fromDecoded(parcel.readString());
            }
            throw new IllegalArgumentException("Bad representation: " + i2);
        }

        @Override // android.net.Uri.AbstractPart
        public String getEncoded() {
            if (this.encoded != Uri.NOT_CACHED) {
                return this.encoded;
            }
            String strEncode = Uri.encode(this.decoded, "/");
            this.encoded = strEncode;
            return strEncode;
        }

        public PathSegments getPathSegments() {
            PathSegments pathSegments = this.pathSegments;
            if (pathSegments != null) {
                return pathSegments;
            }
            String encoded = getEncoded();
            if (encoded == null) {
                PathSegments pathSegments2 = PathSegments.EMPTY;
                this.pathSegments = pathSegments2;
                return pathSegments2;
            }
            PathSegmentsBuilder pathSegmentsBuilder = new PathSegmentsBuilder();
            int i2 = 0;
            while (true) {
                int iIndexOf = encoded.indexOf(47, i2);
                if (iIndexOf <= -1) {
                    break;
                }
                if (i2 < iIndexOf) {
                    pathSegmentsBuilder.add(Uri.decode(encoded.substring(i2, iIndexOf)));
                }
                i2 = iIndexOf + 1;
            }
            if (i2 < encoded.length()) {
                pathSegmentsBuilder.add(Uri.decode(encoded.substring(i2)));
            }
            PathSegments pathSegmentsBuild = pathSegmentsBuilder.build();
            this.pathSegments = pathSegmentsBuild;
            return pathSegmentsBuild;
        }
    }

    public static class PathSegments extends AbstractList<String> implements RandomAccess {
        public static final PathSegments EMPTY = new PathSegments(null, 0);
        public final String[] segments;
        public final int size;

        public PathSegments(String[] strArr, int i2) {
            this.segments = strArr;
            this.size = i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.size;
        }

        @Override // java.util.AbstractList, java.util.List
        public String get(int i2) {
            if (i2 < this.size) {
                return this.segments[i2];
            }
            throw new IndexOutOfBoundsException();
        }
    }

    public static class PathSegmentsBuilder {
        public String[] segments;
        public int size = 0;

        public void add(String str) {
            String[] strArr = this.segments;
            if (strArr == null) {
                this.segments = new String[4];
            } else if (this.size + 1 == strArr.length) {
                String[] strArr2 = new String[strArr.length * 2];
                System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
                this.segments = strArr2;
            }
            String[] strArr3 = this.segments;
            int i2 = this.size;
            this.size = i2 + 1;
            strArr3[i2] = str;
        }

        public PathSegments build() {
            if (this.segments == null) {
                return PathSegments.EMPTY;
            }
            try {
                return new PathSegments(this.segments, this.size);
            } finally {
                this.segments = null;
            }
        }
    }

    public static class StringUri extends AbstractHierarchicalUri {
        public static final int TYPE_ID = 1;
        private Part authority;
        private volatile int cachedFsi;
        private volatile int cachedSsi;
        private Part fragment;
        private PathPart path;
        private Part query;
        private volatile String scheme;
        private Part ssp;
        private final String uriString;

        private int findFragmentSeparator() {
            if (this.cachedFsi != -2) {
                return this.cachedFsi;
            }
            int iIndexOf = this.uriString.indexOf(35, findSchemeSeparator());
            this.cachedFsi = iIndexOf;
            return iIndexOf;
        }

        private int findSchemeSeparator() {
            if (this.cachedSsi != -2) {
                return this.cachedSsi;
            }
            int iIndexOf = this.uriString.indexOf(58);
            this.cachedSsi = iIndexOf;
            return iIndexOf;
        }

        private Part getAuthorityPart() {
            Part part = this.authority;
            if (part != null) {
                return part;
            }
            Part partFromEncoded = Part.fromEncoded(parseAuthority(this.uriString, findSchemeSeparator()));
            this.authority = partFromEncoded;
            return partFromEncoded;
        }

        private Part getFragmentPart() {
            Part part = this.fragment;
            if (part != null) {
                return part;
            }
            Part partFromEncoded = Part.fromEncoded(parseFragment());
            this.fragment = partFromEncoded;
            return partFromEncoded;
        }

        private PathPart getPathPart() {
            PathPart pathPart = this.path;
            if (pathPart != null) {
                return pathPart;
            }
            PathPart pathPartFromEncoded = PathPart.fromEncoded(parsePath());
            this.path = pathPartFromEncoded;
            return pathPartFromEncoded;
        }

        private Part getQueryPart() {
            Part part = this.query;
            if (part != null) {
                return part;
            }
            Part partFromEncoded = Part.fromEncoded(parseQuery());
            this.query = partFromEncoded;
            return partFromEncoded;
        }

        private Part getSsp() {
            Part part = this.ssp;
            if (part != null) {
                return part;
            }
            Part partFromEncoded = Part.fromEncoded(parseSsp());
            this.ssp = partFromEncoded;
            return partFromEncoded;
        }

        public static String parseAuthority(String str, int i2) {
            int length = str.length();
            int i3 = i2 + 2;
            if (length <= i3 || str.charAt(i2 + 1) != '/' || str.charAt(i3) != '/') {
                return null;
            }
            int i4 = i2 + 3;
            int i5 = i4;
            while (i5 < length) {
                char cCharAt = str.charAt(i5);
                if (cCharAt == '#' || cCharAt == '/' || cCharAt == '?') {
                    break;
                }
                i5++;
            }
            return str.substring(i4, i5);
        }

        private String parseFragment() {
            int iFindFragmentSeparator = findFragmentSeparator();
            if (iFindFragmentSeparator == -1) {
                return null;
            }
            return this.uriString.substring(iFindFragmentSeparator + 1);
        }

        private String parsePath() {
            String str = this.uriString;
            int iFindSchemeSeparator = findSchemeSeparator();
            if (iFindSchemeSeparator > -1) {
                int i2 = iFindSchemeSeparator + 1;
                if ((i2 == str.length()) || str.charAt(i2) != '/') {
                    return null;
                }
            }
            return parsePath(str, iFindSchemeSeparator);
        }

        private String parseQuery() {
            int iIndexOf = this.uriString.indexOf(63, findSchemeSeparator());
            if (iIndexOf == -1) {
                return null;
            }
            int iFindFragmentSeparator = findFragmentSeparator();
            if (iFindFragmentSeparator == -1) {
                return this.uriString.substring(iIndexOf + 1);
            }
            if (iFindFragmentSeparator < iIndexOf) {
                return null;
            }
            return this.uriString.substring(iIndexOf + 1, iFindFragmentSeparator);
        }

        private String parseScheme() {
            int iFindSchemeSeparator = findSchemeSeparator();
            if (iFindSchemeSeparator == -1) {
                return null;
            }
            return this.uriString.substring(0, iFindSchemeSeparator);
        }

        private String parseSsp() {
            int iFindSchemeSeparator = findSchemeSeparator();
            int iFindFragmentSeparator = findFragmentSeparator();
            return iFindFragmentSeparator == -1 ? this.uriString.substring(iFindSchemeSeparator + 1) : this.uriString.substring(iFindSchemeSeparator + 1, iFindFragmentSeparator);
        }

        public static Uri readFrom(Parcel parcel) {
            return new StringUri(parcel.readString());
        }

        @Override // android.net.Uri
        public Builder buildUpon() {
            return isHierarchical() ? new Builder().scheme(getScheme()).authority(getAuthorityPart()).path(getPathPart()).query(getQueryPart()).fragment(getFragmentPart()) : new Builder().scheme(getScheme()).opaquePart(getSsp()).fragment(getFragmentPart());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.net.Uri
        public String getAuthority() {
            return getAuthorityPart().getDecoded();
        }

        @Override // android.net.Uri
        public String getEncodedAuthority() {
            return getAuthorityPart().getEncoded();
        }

        @Override // android.net.Uri
        public String getEncodedFragment() {
            return getFragmentPart().getEncoded();
        }

        @Override // android.net.Uri
        public String getEncodedPath() {
            return getPathPart().getEncoded();
        }

        @Override // android.net.Uri
        public String getEncodedQuery() {
            return getQueryPart().getEncoded();
        }

        @Override // android.net.Uri
        public String getEncodedSchemeSpecificPart() {
            return getSsp().getEncoded();
        }

        @Override // android.net.Uri
        public String getFragment() {
            return getFragmentPart().getDecoded();
        }

        @Override // android.net.Uri
        public String getPath() {
            return getPathPart().getDecoded();
        }

        @Override // android.net.Uri
        public List<String> getPathSegments() {
            return getPathPart().getPathSegments();
        }

        @Override // android.net.Uri
        public String getQuery() {
            return getQueryPart().getDecoded();
        }

        @Override // android.net.Uri
        public String getScheme() {
            if (this.scheme != Uri.NOT_CACHED) {
                return this.scheme;
            }
            String scheme = parseScheme();
            this.scheme = scheme;
            return scheme;
        }

        @Override // android.net.Uri
        public String getSchemeSpecificPart() {
            return getSsp().getDecoded();
        }

        @Override // android.net.Uri
        public boolean isHierarchical() {
            int iFindSchemeSeparator = findSchemeSeparator();
            if (iFindSchemeSeparator == -1) {
                return true;
            }
            int i2 = iFindSchemeSeparator + 1;
            return this.uriString.length() != i2 && this.uriString.charAt(i2) == '/';
        }

        @Override // android.net.Uri
        public boolean isRelative() {
            return findSchemeSeparator() == -1;
        }

        @Override // android.net.Uri
        public String toString() {
            return this.uriString;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(1);
            parcel.writeString(this.uriString);
        }

        private StringUri(String str) {
            super();
            this.cachedSsi = -2;
            this.cachedFsi = -2;
            this.scheme = Uri.NOT_CACHED;
            Objects.requireNonNull(str, "uriString");
            this.uriString = str;
        }

        public static String parsePath(String str, int i2) {
            int i3;
            int length = str.length();
            int i4 = i2 + 2;
            if (length > i4 && str.charAt(i2 + 1) == '/' && str.charAt(i4) == '/') {
                i3 = i2 + 3;
                while (i3 < length) {
                    char cCharAt = str.charAt(i3);
                    if (cCharAt == '#') {
                        return ProxyProperties.LOCAL_EXCL_LIST;
                    }
                    if (cCharAt == '/') {
                        break;
                    }
                    if (cCharAt == '?') {
                        return ProxyProperties.LOCAL_EXCL_LIST;
                    }
                    i3++;
                }
            } else {
                i3 = i2 + 1;
            }
            int i5 = i3;
            while (i5 < length) {
                char cCharAt2 = str.charAt(i5);
                if (cCharAt2 == '#' || cCharAt2 == '?') {
                    break;
                }
                i5++;
            }
            return str.substring(i3, i5);
        }
    }

    static {
        Part part = Part.NULL;
        EMPTY = new HierarchicalUri(null, part, PathPart.EMPTY, part, part);
        CREATOR = new Parcelable.Creator<Uri>() { // from class: android.net.Uri.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Uri createFromParcel(Parcel parcel) {
                int i2 = parcel.readInt();
                if (i2 == 0) {
                    return null;
                }
                if (i2 == 1) {
                    return StringUri.readFrom(parcel);
                }
                if (i2 == 2) {
                    return OpaqueUri.readFrom(parcel);
                }
                if (i2 == 3) {
                    return HierarchicalUri.readFrom(parcel);
                }
                throw new IllegalArgumentException("Unknown URI type: " + i2);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Uri[] newArray(int i2) {
                return new Uri[i2];
            }
        };
        HEX_DIGITS = "0123456789ABCDEF".toCharArray();
    }

    public static String decode(String str) {
        if (str == null) {
            return null;
        }
        return UriCodec.decode(str, false, StandardCharsets.UTF_8, false);
    }

    public static String encode(String str) {
        return encode(str, null);
    }

    public static Uri fromFile(File file) {
        Objects.requireNonNull(file, ContentResolver.SCHEME_FILE);
        PathPart pathPartFromDecoded = PathPart.fromDecoded(file.getAbsolutePath());
        Part part = Part.EMPTY;
        Part part2 = Part.NULL;
        return new HierarchicalUri(ContentResolver.SCHEME_FILE, part, pathPartFromDecoded, part2, part2);
    }

    public static Uri fromParts(String str, String str2, String str3) {
        Objects.requireNonNull(str, "scheme");
        Objects.requireNonNull(str2, "ssp");
        return new OpaqueUri(str, Part.fromDecoded(str2), Part.fromDecoded(str3));
    }

    private static boolean isAllowed(char c2, String str) {
        return (c2 >= 'A' && c2 <= 'Z') || (c2 >= 'a' && c2 <= 'z') || !((c2 < '0' || c2 > '9') && "_-!.~'()*".indexOf(c2) == -1 && (str == null || str.indexOf(c2) == -1));
    }

    public static Uri parse(String str) {
        return new StringUri(str);
    }

    public static Uri withAppendedPath(Uri uri, String str) {
        return uri.buildUpon().appendEncodedPath(str).build();
    }

    public static void writeToParcel(Parcel parcel, Uri uri) {
        if (uri == null) {
            parcel.writeInt(0);
        } else {
            uri.writeToParcel(parcel, 0);
        }
    }

    public abstract Builder buildUpon();

    public void checkFileUriExposed(String str) {
        if (ContentResolver.SCHEME_FILE.equals(getScheme())) {
            StrictMode.onFileUriExposed(str);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof Uri) {
            return toString().equals(((Uri) obj).toString());
        }
        return false;
    }

    public abstract String getAuthority();

    public boolean getBooleanQueryParameter(String str, boolean z2) {
        String queryParameter = getQueryParameter(str);
        if (queryParameter == null) {
            return z2;
        }
        String lowerCase = queryParameter.toLowerCase(Locale.ROOT);
        return ("false".equals(lowerCase) || "0".equals(lowerCase)) ? false : true;
    }

    public Uri getCanonicalUri() {
        if (ContentResolver.SCHEME_FILE.equals(getScheme())) {
            try {
                String canonicalPath = new File(getPath()).getCanonicalPath();
                if (Environment.isExternalStorageEmulated()) {
                    String string = Environment.getLegacyExternalStorageDirectory().toString();
                    if (canonicalPath.startsWith(string)) {
                        return fromFile(new File(Environment.getExternalStorageDirectory().toString(), canonicalPath.substring(string.length() + 1)));
                    }
                }
                return fromFile(new File(canonicalPath));
            } catch (IOException unused) {
            }
        }
        return this;
    }

    public abstract String getEncodedAuthority();

    public abstract String getEncodedFragment();

    public abstract String getEncodedPath();

    public abstract String getEncodedQuery();

    public abstract String getEncodedSchemeSpecificPart();

    public abstract String getEncodedUserInfo();

    public abstract String getFragment();

    public abstract String getHost();

    public abstract String getLastPathSegment();

    public abstract String getPath();

    public abstract List<String> getPathSegments();

    public abstract int getPort();

    public abstract String getQuery();

    public String getQueryParameter(String str) {
        if (isOpaque()) {
            throw new UnsupportedOperationException(NOT_HIERARCHICAL);
        }
        Objects.requireNonNull(str, "key");
        String encodedQuery = getEncodedQuery();
        if (encodedQuery == null) {
            return null;
        }
        String strEncode = encode(str, null);
        int length = encodedQuery.length();
        int i2 = 0;
        while (true) {
            int iIndexOf = encodedQuery.indexOf(38, i2);
            int i3 = iIndexOf != -1 ? iIndexOf : length;
            int iIndexOf2 = encodedQuery.indexOf(61, i2);
            if (iIndexOf2 > i3 || iIndexOf2 == -1) {
                iIndexOf2 = i3;
            }
            if (iIndexOf2 - i2 == strEncode.length() && encodedQuery.regionMatches(i2, strEncode, 0, strEncode.length())) {
                return iIndexOf2 == i3 ? ProxyProperties.LOCAL_EXCL_LIST : UriCodec.decode(encodedQuery.substring(iIndexOf2 + 1, i3), true, StandardCharsets.UTF_8, false);
            }
            if (iIndexOf == -1) {
                return null;
            }
            i2 = iIndexOf + 1;
        }
    }

    public Set<String> getQueryParameterNames() {
        if (isOpaque()) {
            throw new UnsupportedOperationException(NOT_HIERARCHICAL);
        }
        String encodedQuery = getEncodedQuery();
        if (encodedQuery == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i2 = 0;
        do {
            int iIndexOf = encodedQuery.indexOf(38, i2);
            if (iIndexOf == -1) {
                iIndexOf = encodedQuery.length();
            }
            int iIndexOf2 = encodedQuery.indexOf(61, i2);
            if (iIndexOf2 > iIndexOf || iIndexOf2 == -1) {
                iIndexOf2 = iIndexOf;
            }
            linkedHashSet.add(decode(encodedQuery.substring(i2, iIndexOf2)));
            i2 = iIndexOf + 1;
        } while (i2 < encodedQuery.length());
        return Collections.unmodifiableSet(linkedHashSet);
    }

    public List<String> getQueryParameters(String str) {
        if (isOpaque()) {
            throw new UnsupportedOperationException(NOT_HIERARCHICAL);
        }
        Objects.requireNonNull(str, "key");
        String encodedQuery = getEncodedQuery();
        if (encodedQuery == null) {
            return Collections.emptyList();
        }
        try {
            String strEncode = URLEncoder.encode(str, DEFAULT_ENCODING);
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (true) {
                int iIndexOf = encodedQuery.indexOf(38, i2);
                int length = iIndexOf != -1 ? iIndexOf : encodedQuery.length();
                int iIndexOf2 = encodedQuery.indexOf(61, i2);
                if (iIndexOf2 > length || iIndexOf2 == -1) {
                    iIndexOf2 = length;
                }
                if (iIndexOf2 - i2 == strEncode.length() && encodedQuery.regionMatches(i2, strEncode, 0, strEncode.length())) {
                    if (iIndexOf2 == length) {
                        arrayList.add(ProxyProperties.LOCAL_EXCL_LIST);
                    } else {
                        arrayList.add(decode(encodedQuery.substring(iIndexOf2 + 1, length)));
                    }
                }
                if (iIndexOf == -1) {
                    return Collections.unmodifiableList(arrayList);
                }
                i2 = iIndexOf + 1;
            }
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }

    public abstract String getScheme();

    public abstract String getSchemeSpecificPart();

    public abstract String getUserInfo();

    public int hashCode() {
        return toString().hashCode();
    }

    public boolean isAbsolute() {
        return !isRelative();
    }

    public abstract boolean isHierarchical();

    public boolean isOpaque() {
        return !isHierarchical();
    }

    public abstract boolean isRelative();

    public Uri normalizeScheme() {
        String scheme = getScheme();
        if (scheme == null) {
            return this;
        }
        String lowerCase = scheme.toLowerCase(Locale.ROOT);
        return scheme.equals(lowerCase) ? this : buildUpon().scheme(lowerCase).build();
    }

    public String toSafeString() {
        String scheme = getScheme();
        String schemeSpecificPart = getSchemeSpecificPart();
        if (scheme == null || !(scheme.equalsIgnoreCase("tel") || scheme.equalsIgnoreCase("sip") || scheme.equalsIgnoreCase("sms") || scheme.equalsIgnoreCase("smsto") || scheme.equalsIgnoreCase("mailto"))) {
            StringBuilder sb = new StringBuilder(64);
            if (scheme != null) {
                sb.append(scheme);
                sb.append(':');
            }
            if (schemeSpecificPart != null) {
                sb.append(schemeSpecificPart);
            }
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder(64);
        sb2.append(scheme);
        sb2.append(':');
        if (schemeSpecificPart != null) {
            for (int i2 = 0; i2 < schemeSpecificPart.length(); i2++) {
                char cCharAt = schemeSpecificPart.charAt(i2);
                if (cCharAt == '-' || cCharAt == '@' || cCharAt == '.') {
                    sb2.append(cCharAt);
                } else {
                    sb2.append('x');
                }
            }
        }
        return sb2.toString();
    }

    public abstract String toString();

    private Uri() {
    }

    public static String encode(String str, String str2) {
        StringBuilder sb = null;
        if (str == null) {
            return null;
        }
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2;
            while (i3 < length && isAllowed(str.charAt(i3), str2)) {
                i3++;
            }
            if (i3 == length) {
                if (i2 == 0) {
                    return str;
                }
                sb.append((CharSequence) str, i2, length);
                return sb.toString();
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            if (i3 > i2) {
                sb.append((CharSequence) str, i2, i3);
            }
            i2 = i3 + 1;
            while (i2 < length && !isAllowed(str.charAt(i2), str2)) {
                i2++;
            }
            try {
                byte[] bytes = str.substring(i3, i2).getBytes(DEFAULT_ENCODING);
                int length2 = bytes.length;
                for (int i4 = 0; i4 < length2; i4++) {
                    sb.append('%');
                    char[] cArr = HEX_DIGITS;
                    sb.append(cArr[(bytes[i4] & 240) >> 4]);
                    sb.append(cArr[bytes[i4] & DhcpPacket.DHCP_DOMAIN_NAME]);
                }
            } catch (UnsupportedEncodingException e2) {
                throw new AssertionError(e2);
            }
        }
        return sb == null ? str : sb.toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(Uri uri) {
        return toString().compareTo(uri.toString());
    }
}
