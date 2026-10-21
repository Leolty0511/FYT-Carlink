package com.google.android.util;

import android.app.backup.FullBackup;
import android.net.ProxyProperties;
import android.provider.MediaStore;
import android.view.HardwareRenderer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractMessageParser {
    public static final String musicNote = "♫ ";
    private HashMap<Character, Format> formatStart;
    private int nextChar;
    private int nextClass;
    private boolean parseAcronyms;
    private boolean parseFormatting;
    private boolean parseMeText;
    private boolean parseMusic;
    private boolean parseSmilies;
    private boolean parseUrls;
    private ArrayList<Part> parts;
    private String text;
    private ArrayList<Token> tokens;

    /* JADX INFO: renamed from: com.google.android.util.AbstractMessageParser$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$android$util$AbstractMessageParser$Token$Type;

        static {
            int[] iArr = new int[Token.Type.values().length];
            $SwitchMap$com$google$android$util$AbstractMessageParser$Token$Type = iArr;
            try {
                iArr[Token.Type.LINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$android$util$AbstractMessageParser$Token$Type[Token.Type.SMILEY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$android$util$AbstractMessageParser$Token$Type[Token.Type.ACRONYM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$android$util$AbstractMessageParser$Token$Type[Token.Type.MUSIC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$android$util$AbstractMessageParser$Token$Type[Token.Type.GOOGLE_VIDEO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$android$util$AbstractMessageParser$Token$Type[Token.Type.YOUTUBE_VIDEO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$android$util$AbstractMessageParser$Token$Type[Token.Type.PHOTO.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$android$util$AbstractMessageParser$Token$Type[Token.Type.FLICKR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static class Acronym extends Token {
        private String value;

        public Acronym(String str, String str2) {
            super(Token.Type.ACRONYM, str);
            this.value = str2;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public List<String> getInfo() {
            List<String> info = super.getInfo();
            info.add(getRawText());
            info.add(getValue());
            return info;
        }

        public String getValue() {
            return this.value;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public boolean isHtml() {
            return false;
        }
    }

    public static class FlickrPhoto extends Token {
        private static final String SETS = "sets";
        private static final String TAGS = "tags";
        private String grouping;
        private String groupingId;
        private String photo;
        private String user;
        private static final Pattern URL_PATTERN = Pattern.compile("http://(?:www.)?flickr.com/photos/([^/?#&]+)/?([^/?#&]+)?/?.*");
        private static final Pattern GROUPING_PATTERN = Pattern.compile("http://(?:www.)?flickr.com/photos/([^/?#&]+)/(tags|sets)/([^/?#&]+)/?");

        public FlickrPhoto(String str, String str2, String str3, String str4, String str5) {
            super(Token.Type.FLICKR, str5);
            if ("tags".equals(str)) {
                this.user = null;
                this.photo = null;
                this.grouping = "tags";
                this.groupingId = str2;
                return;
            }
            this.user = str;
            this.photo = HardwareRenderer.OVERDRAW_PROPERTY_SHOW.equals(str2) ? null : str2;
            this.grouping = str3;
            this.groupingId = str4;
        }

        public static String getPhotoURL(String str, String str2) {
            return "http://flickr.com/photos/" + str + "/" + str2;
        }

        public static String getRssUrl(String str) {
            return null;
        }

        public static String getTagsURL(String str) {
            return "http://flickr.com/photos/tags/" + str;
        }

        public static String getUserSetsURL(String str, String str2) {
            return "http://flickr.com/photos/" + str + "/sets/" + str2;
        }

        public static String getUserTagsURL(String str, String str2) {
            return "http://flickr.com/photos/" + str + "/tags/" + str2;
        }

        public static String getUserURL(String str) {
            return "http://flickr.com/photos/" + str;
        }

        public static FlickrPhoto matchURL(String str, String str2) {
            Matcher matcher = GROUPING_PATTERN.matcher(str);
            if (matcher.matches()) {
                return new FlickrPhoto(matcher.group(1), null, matcher.group(2), matcher.group(3), str2);
            }
            Matcher matcher2 = URL_PATTERN.matcher(str);
            if (matcher2.matches()) {
                return new FlickrPhoto(matcher2.group(1), matcher2.group(2), null, null, str2);
            }
            return null;
        }

        public String getGrouping() {
            return this.grouping;
        }

        public String getGroupingId() {
            return this.groupingId;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public List<String> getInfo() {
            List<String> info = super.getInfo();
            info.add(getUrl());
            String user = getUser();
            String groupingId = ProxyProperties.LOCAL_EXCL_LIST;
            info.add(user != null ? getUser() : ProxyProperties.LOCAL_EXCL_LIST);
            info.add(getPhoto() != null ? getPhoto() : ProxyProperties.LOCAL_EXCL_LIST);
            info.add(getGrouping() != null ? getGrouping() : ProxyProperties.LOCAL_EXCL_LIST);
            if (getGroupingId() != null) {
                groupingId = getGroupingId();
            }
            info.add(groupingId);
            return info;
        }

        public String getPhoto() {
            return this.photo;
        }

        public String getUrl() {
            if (SETS.equals(this.grouping)) {
                return getUserSetsURL(this.user, this.groupingId);
            }
            if ("tags".equals(this.grouping)) {
                String str = this.user;
                return str != null ? getUserTagsURL(str, this.groupingId) : getTagsURL(this.groupingId);
            }
            String str2 = this.photo;
            return str2 != null ? getPhotoURL(this.user, str2) : getUserURL(this.user);
        }

        public String getUser() {
            return this.user;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public boolean isHtml() {
            return false;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public boolean isMedia() {
            return true;
        }
    }

    public static class Format extends Token {
        private char ch;
        private boolean matched;
        private boolean start;

        public Format(char c2, boolean z2) {
            super(Token.Type.FORMAT, String.valueOf(c2));
            this.ch = c2;
            this.start = z2;
        }

        private String getFormatEnd(char c2) {
            if (c2 == '\"') {
                return "”</font>";
            }
            if (c2 == '*') {
                return "</b>";
            }
            if (c2 == '^') {
                return "</font></b>";
            }
            if (c2 == '_') {
                return "</i>";
            }
            throw new AssertionError("unknown format '" + c2 + "'");
        }

        private String getFormatStart(char c2) {
            if (c2 == '\"') {
                return "<font color=\"#999999\">“";
            }
            if (c2 == '*') {
                return "<b>";
            }
            if (c2 == '^') {
                return "<b><font color=\"#005FFF\">";
            }
            if (c2 == '_') {
                return "<i>";
            }
            throw new AssertionError("unknown format '" + c2 + "'");
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public boolean controlCaps() {
            return this.ch == '^';
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public List<String> getInfo() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public boolean isHtml() {
            return true;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public boolean setCaps() {
            return this.start;
        }

        public void setMatched(boolean z2) {
            this.matched = z2;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public String toHtml(boolean z2) {
            if (this.matched) {
                return this.start ? getFormatStart(this.ch) : getFormatEnd(this.ch);
            }
            char c2 = this.ch;
            return c2 == '\"' ? "&quot;" : String.valueOf(c2);
        }
    }

    public static class Link extends Token {
        private String url;

        public Link(String str, String str2) {
            super(Token.Type.LINK, str2);
            this.url = str;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public List<String> getInfo() {
            List<String> info = super.getInfo();
            info.add(getURL());
            info.add(getRawText());
            return info;
        }

        public String getURL() {
            return this.url;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public boolean isHtml() {
            return false;
        }
    }

    public static class MusicTrack extends Token {
        private String track;

        public MusicTrack(String str) {
            super(Token.Type.MUSIC, str);
            this.track = str;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public List<String> getInfo() {
            List<String> info = super.getInfo();
            info.add(getTrack());
            return info;
        }

        public String getTrack() {
            return this.track;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public boolean isHtml() {
            return false;
        }
    }

    public static class Part {
        private String meText;
        private ArrayList<Token> tokens = new ArrayList<>();

        private String getPartType() {
            if (isMedia()) {
                return "d";
            }
            return this.meText != null ? "m" : ProxyProperties.LOCAL_EXCL_LIST;
        }

        public void add(Token token) {
            if (isMedia()) {
                throw new AssertionError("media ");
            }
            this.tokens.add(token);
        }

        public Token getMediaToken() {
            if (isMedia()) {
                return this.tokens.get(0);
            }
            return null;
        }

        public String getRawText() {
            StringBuilder sb = new StringBuilder();
            String str = this.meText;
            if (str != null) {
                sb.append(str);
            }
            for (int i2 = 0; i2 < this.tokens.size(); i2++) {
                sb.append(this.tokens.get(i2).getRawText());
            }
            return sb.toString();
        }

        public ArrayList<Token> getTokens() {
            return this.tokens;
        }

        public String getType(boolean z2) {
            StringBuilder sb = new StringBuilder();
            sb.append(z2 ? "s" : FullBackup.ROOT_TREE_TOKEN);
            sb.append(getPartType());
            return sb.toString();
        }

        public boolean isMedia() {
            return this.tokens.size() == 1 && this.tokens.get(0).isMedia();
        }

        public void setMeText(String str) {
            this.meText = str;
        }
    }

    public static class Photo extends Token {
        private static final Pattern URL_PATTERN = Pattern.compile("http://picasaweb.google.com/([^/?#&]+)/+((?!searchbrowse)[^/?#&]+)(?:/|/photo)?(?:\\?[^#]*)?(?:#(.*))?");
        private String album;
        private String photo;
        private String user;

        public Photo(String str, String str2, String str3, String str4) {
            super(Token.Type.PHOTO, str4);
            this.user = str;
            this.album = str2;
            this.photo = str3;
        }

        public static String getAlbumURL(String str, String str2) {
            return "http://picasaweb.google.com/" + str + "/" + str2;
        }

        public static String getPhotoURL(String str, String str2, String str3) {
            return "http://picasaweb.google.com/" + str + "/" + str2 + "/photo#" + str3;
        }

        public static String getRssUrl(String str) {
            return "http://picasaweb.google.com/data/feed/api/user/" + str + "?category=album&alt=rss";
        }

        public static Photo matchURL(String str, String str2) {
            Matcher matcher = URL_PATTERN.matcher(str);
            if (matcher.matches()) {
                return new Photo(matcher.group(1), matcher.group(2), matcher.group(3), str2);
            }
            return null;
        }

        public String getAlbum() {
            return this.album;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public List<String> getInfo() {
            List<String> info = super.getInfo();
            info.add(getRssUrl(getUser()));
            info.add(getAlbumURL(getUser(), getAlbum()));
            if (getPhoto() != null) {
                info.add(getPhotoURL(getUser(), getAlbum(), getPhoto()));
            } else {
                info.add(null);
            }
            return info;
        }

        public String getPhoto() {
            return this.photo;
        }

        public String getUser() {
            return this.user;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public boolean isHtml() {
            return false;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public boolean isMedia() {
            return true;
        }
    }

    public interface Resources {
        TrieNode getAcronyms();

        TrieNode getDomainSuffixes();

        Set<String> getSchemes();

        TrieNode getSmileys();
    }

    public static class Smiley extends Token {
        public Smiley(String str) {
            super(Token.Type.SMILEY, str);
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public List<String> getInfo() {
            List<String> info = super.getInfo();
            info.add(getRawText());
            return info;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public boolean isHtml() {
            return false;
        }
    }

    public static abstract class Token {
        public String text;
        public Type type;

        public enum Type {
            HTML("html"),
            FORMAT(MediaStore.Files.FileColumns.FORMAT),
            LINK("l"),
            SMILEY("e"),
            ACRONYM(FullBackup.APK_TREE_TOKEN),
            MUSIC("m"),
            GOOGLE_VIDEO("v"),
            YOUTUBE_VIDEO("yt"),
            PHOTO("p"),
            FLICKR(FullBackup.DATA_TREE_TOKEN);

            private String stringRep;

            Type(String str) {
                this.stringRep = str;
            }

            @Override // java.lang.Enum
            public String toString() {
                return this.stringRep;
            }
        }

        public Token(Type type, String str) {
            this.type = type;
            this.text = str;
        }

        public boolean controlCaps() {
            return false;
        }

        public List<String> getInfo() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(getType().toString());
            return arrayList;
        }

        public String getRawText() {
            return this.text;
        }

        public Type getType() {
            return this.type;
        }

        public boolean isArray() {
            return !isHtml();
        }

        public abstract boolean isHtml();

        public boolean isMedia() {
            return false;
        }

        public boolean setCaps() {
            return false;
        }

        public String toHtml(boolean z2) {
            throw new AssertionError("not html");
        }
    }

    public static class TrieNode {
        private final HashMap<Character, TrieNode> children;
        private String text;
        private String value;

        public TrieNode() {
            this(ProxyProperties.LOCAL_EXCL_LIST);
        }

        public static void addToTrie(TrieNode trieNode, String str, String str2) {
            for (int i2 = 0; i2 < str.length(); i2++) {
                trieNode = trieNode.getOrCreateChild(str.charAt(i2));
            }
            trieNode.setValue(str2);
        }

        public final boolean exists() {
            return this.value != null;
        }

        public TrieNode getChild(char c2) {
            return this.children.get(Character.valueOf(c2));
        }

        public TrieNode getOrCreateChild(char c2) {
            Character chValueOf = Character.valueOf(c2);
            TrieNode trieNode = this.children.get(chValueOf);
            if (trieNode != null) {
                return trieNode;
            }
            TrieNode trieNode2 = new TrieNode(this.text + String.valueOf(c2));
            this.children.put(chValueOf, trieNode2);
            return trieNode2;
        }

        public final String getText() {
            return this.text;
        }

        public final String getValue() {
            return this.value;
        }

        public void setValue(String str) {
            this.value = str;
        }

        public TrieNode(String str) {
            this.children = new HashMap<>();
            this.text = str;
        }
    }

    public static class Video extends Token {
        private static final Pattern URL_PATTERN = Pattern.compile("(?i)http://video\\.google\\.[a-z0-9]+(?:\\.[a-z0-9]+)?/videoplay\\?.*?\\bdocid=(-?\\d+).*");
        private String docid;

        public Video(String str, String str2) {
            super(Token.Type.GOOGLE_VIDEO, str2);
            this.docid = str;
        }

        public static String getRssUrl(String str) {
            return "http://video.google.com/videofeed?type=docid&output=rss&sourceid=gtalk&docid=" + str;
        }

        public static String getURL(String str) {
            return getURL(str, null);
        }

        public static Video matchURL(String str, String str2) {
            Matcher matcher = URL_PATTERN.matcher(str);
            if (matcher.matches()) {
                return new Video(matcher.group(1), str2);
            }
            return null;
        }

        public String getDocID() {
            return this.docid;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public List<String> getInfo() {
            List<String> info = super.getInfo();
            info.add(getRssUrl(this.docid));
            info.add(getURL(this.docid));
            return info;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public boolean isHtml() {
            return false;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public boolean isMedia() {
            return true;
        }

        public static String getURL(String str, String str2) {
            if (str2 == null) {
                str2 = ProxyProperties.LOCAL_EXCL_LIST;
            } else if (str2.length() > 0) {
                str2 = str2 + "&";
            }
            return "http://video.google.com/videoplay?" + str2 + "docid=" + str;
        }
    }

    public static class YouTubeVideo extends Token {
        private static final Pattern URL_PATTERN = Pattern.compile("(?i)http://(?:[a-z0-9]+\\.)?youtube\\.[a-z0-9]+(?:\\.[a-z0-9]+)?/watch\\?.*\\bv=([-_a-zA-Z0-9=]+).*");
        private String docid;

        public YouTubeVideo(String str, String str2) {
            super(Token.Type.YOUTUBE_VIDEO, str2);
            this.docid = str;
        }

        public static String getPrefixedURL(boolean z2, String str, String str2, String str3) {
            String str4 = z2 ? "http://" : ProxyProperties.LOCAL_EXCL_LIST;
            if (str == null) {
                str = ProxyProperties.LOCAL_EXCL_LIST;
            }
            if (str3 == null) {
                str3 = ProxyProperties.LOCAL_EXCL_LIST;
            } else if (str3.length() > 0) {
                str3 = str3 + "&";
            }
            return str4 + str + "youtube.com/watch?" + str3 + "v=" + str2;
        }

        public static String getRssUrl(String str) {
            return "http://youtube.com/watch?v=" + str;
        }

        public static String getURL(String str) {
            return getURL(str, null);
        }

        public static YouTubeVideo matchURL(String str, String str2) {
            Matcher matcher = URL_PATTERN.matcher(str);
            if (matcher.matches()) {
                return new YouTubeVideo(matcher.group(1), str2);
            }
            return null;
        }

        public String getDocID() {
            return this.docid;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public List<String> getInfo() {
            List<String> info = super.getInfo();
            info.add(getRssUrl(this.docid));
            info.add(getURL(this.docid));
            return info;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public boolean isHtml() {
            return false;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public boolean isMedia() {
            return true;
        }

        public static String getURL(String str, String str2) {
            if (str2 == null) {
                str2 = ProxyProperties.LOCAL_EXCL_LIST;
            } else if (str2.length() > 0) {
                str2 = str2 + "&";
            }
            return "http://youtube.com/watch?" + str2 + "v=" + str;
        }
    }

    public AbstractMessageParser(String str) {
        this(str, true, true, true, true, true, true);
    }

    private void addToken(Token token) {
        this.tokens.add(token);
    }

    private void addURLToken(String str, String str2) {
        addToken(tokenForUrl(str, str2));
    }

    private void buildParts(String str) {
        for (int i2 = 0; i2 < this.tokens.size(); i2++) {
            Token token = this.tokens.get(i2);
            if (token.isMedia() || this.parts.size() == 0 || lastPart().isMedia()) {
                this.parts.add(new Part());
            }
            lastPart().add(token);
        }
        if (this.parts.size() > 0) {
            this.parts.get(0).setMeText(str);
        }
    }

    private int getCharClass(int i2) {
        if (i2 < 0 || this.text.length() <= i2) {
            return 0;
        }
        char cCharAt = this.text.charAt(i2);
        if (Character.isWhitespace(cCharAt)) {
            return 1;
        }
        if (Character.isLetter(cCharAt)) {
            return 2;
        }
        if (Character.isDigit(cCharAt)) {
            return 3;
        }
        if (!isPunctuation(cCharAt)) {
            return 4;
        }
        int i3 = this.nextClass + 1;
        this.nextClass = i3;
        return i3;
    }

    private boolean isDomainChar(char c2) {
        return c2 == '-' || Character.isLetter(c2) || Character.isDigit(c2);
    }

    private static boolean isFormatChar(char c2) {
        return c2 == '*' || c2 == '^' || c2 == '_';
    }

    private static boolean isPunctuation(char c2) {
        return c2 == '!' || c2 == '\"' || c2 == '(' || c2 == ')' || c2 == ',' || c2 == '.' || c2 == '?' || c2 == ':' || c2 == ';';
    }

    private static boolean isSmileyBreak(char c2, char c3) {
        if (c2 != '$' && c2 != '&' && c2 != '-' && c2 != '/' && c2 != '@' && c2 != '*' && c2 != '+') {
            switch (c2) {
                case '<':
                case '=':
                case '>':
                    break;
                default:
                    switch (c2) {
                        case '[':
                        case '\\':
                        case ']':
                        case '^':
                            break;
                        default:
                            switch (c2) {
                                case '|':
                                case '}':
                                case '~':
                                    break;
                                default:
                                    return false;
                            }
                            break;
                    }
                    break;
            }
        }
        if (c3 == '*' || c3 == '/' || c3 == '@' || c3 == '^' || c3 == '~' || c3 == '[' || c3 == '\\') {
            return true;
        }
        switch (c3) {
            case '#':
            case '$':
            case '%':
                return true;
            default:
                switch (c3) {
                    case '<':
                    case '=':
                    case '>':
                        return true;
                    default:
                        return false;
                }
        }
    }

    private boolean isSmileyBreak(int i2) {
        return i2 > 0 && i2 < this.text.length() && isSmileyBreak(this.text.charAt(i2 + (-1)), this.text.charAt(i2));
    }

    private boolean isURLBreak(int i2) {
        int charClass = getCharClass(i2 - 1);
        return (charClass == 2 || charClass == 3 || charClass == 4) ? false : true;
    }

    private boolean isValidDomain(String str) {
        return matches(getResources().getDomainSuffixes(), reverse(str));
    }

    private boolean isWordBreak(int i2) {
        return getCharClass(i2 + (-1)) != getCharClass(i2);
    }

    private Part lastPart() {
        ArrayList<Part> arrayList = this.parts;
        return arrayList.get(arrayList.size() - 1);
    }

    private static TrieNode longestMatch(TrieNode trieNode, AbstractMessageParser abstractMessageParser, int i2) {
        return longestMatch(trieNode, abstractMessageParser, i2, false);
    }

    private static boolean matches(TrieNode trieNode, String str) {
        int i2 = 0;
        while (i2 < str.length()) {
            int i3 = i2 + 1;
            trieNode = trieNode.getChild(str.charAt(i2));
            if (trieNode == null) {
                break;
            }
            if (trieNode.exists()) {
                return true;
            }
            i2 = i3;
        }
        return false;
    }

    private boolean parseAcronym() {
        TrieNode trieNodeLongestMatch;
        if (!this.parseAcronyms || (trieNodeLongestMatch = longestMatch(getResources().getAcronyms(), this, this.nextChar)) == null) {
            return false;
        }
        addToken(new Acronym(trieNodeLongestMatch.getText(), trieNodeLongestMatch.getValue()));
        this.nextChar += trieNodeLongestMatch.getText().length();
        return true;
    }

    private boolean parseFormatting() {
        if (!this.parseFormatting) {
            return false;
        }
        int i2 = this.nextChar;
        while (i2 < this.text.length() && isFormatChar(this.text.charAt(i2))) {
            i2++;
        }
        if (i2 == this.nextChar || !isWordBreak(i2)) {
            return false;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i3 = this.nextChar; i3 < i2; i3++) {
            char cCharAt = this.text.charAt(i3);
            Character chValueOf = Character.valueOf(cCharAt);
            if (linkedHashMap.containsKey(chValueOf)) {
                addToken(new Format(cCharAt, false));
            } else {
                Format format = this.formatStart.get(chValueOf);
                if (format != null) {
                    format.setMatched(true);
                    this.formatStart.remove(chValueOf);
                    linkedHashMap.put(chValueOf, Boolean.TRUE);
                } else {
                    Format format2 = new Format(cCharAt, true);
                    this.formatStart.put(chValueOf, format2);
                    addToken(format2);
                    linkedHashMap.put(chValueOf, Boolean.FALSE);
                }
            }
        }
        for (Character ch : linkedHashMap.keySet()) {
            if (linkedHashMap.get(ch) == Boolean.TRUE) {
                Format format3 = new Format(ch.charValue(), false);
                format3.setMatched(true);
                addToken(format3);
            }
        }
        this.nextChar = i2;
        return true;
    }

    private boolean parseMusicTrack() {
        if (!this.parseMusic || !this.text.startsWith(musicNote)) {
            return false;
        }
        addToken(new MusicTrack(this.text.substring(2)));
        this.nextChar = this.text.length();
        return true;
    }

    private boolean parseSmiley() {
        TrieNode trieNodeLongestMatch;
        if (!this.parseSmilies || (trieNodeLongestMatch = longestMatch(getResources().getSmileys(), this, this.nextChar, true)) == null) {
            return false;
        }
        int charClass = getCharClass(this.nextChar - 1);
        int charClass2 = getCharClass(this.nextChar + trieNodeLongestMatch.getText().length());
        if ((charClass == 2 || charClass == 3) && (charClass2 == 2 || charClass2 == 3)) {
            return false;
        }
        addToken(new Smiley(trieNodeLongestMatch.getText()));
        this.nextChar += trieNodeLongestMatch.getText().length();
        return true;
    }

    private void parseText() {
        StringBuilder sb = new StringBuilder();
        int i2 = this.nextChar;
        do {
            String str = this.text;
            int i3 = this.nextChar;
            this.nextChar = i3 + 1;
            char cCharAt = str.charAt(i3);
            if (cCharAt == '\n') {
                sb.append("<br>");
            } else if (cCharAt == '\"') {
                sb.append("&quot;");
            } else if (cCharAt == '<') {
                sb.append("&lt;");
            } else if (cCharAt == '>') {
                sb.append("&gt;");
            } else if (cCharAt == '&') {
                sb.append("&amp;");
            } else if (cCharAt != '\'') {
                sb.append(cCharAt);
            } else {
                sb.append("&apos;");
            }
        } while (!isWordBreak(this.nextChar));
        addToken(new Html(this.text.substring(i2, this.nextChar), sb.toString()));
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00c9  */
    private boolean parseURL() {
        String str;
        char cCharAt;
        boolean z2 = false;
        if (this.parseUrls && isURLBreak(this.nextChar)) {
            int i2 = this.nextChar;
            int i3 = i2;
            while (i3 < this.text.length() && isDomainChar(this.text.charAt(i3))) {
                i3++;
            }
            if (i3 == this.text.length()) {
                return false;
            }
            if (this.text.charAt(i3) == ':') {
                if (!getResources().getSchemes().contains(this.text.substring(this.nextChar, i3))) {
                    return false;
                }
                str = ProxyProperties.LOCAL_EXCL_LIST;
            } else if (this.text.charAt(i3) == '.') {
                while (i3 < this.text.length() && ((cCharAt = this.text.charAt(i3)) == '.' || isDomainChar(cCharAt))) {
                    i3++;
                }
                if (!isValidDomain(this.text.substring(this.nextChar, i3))) {
                    return false;
                }
                int i4 = i3 + 1;
                if (i4 < this.text.length() && this.text.charAt(i3) == ':' && Character.isDigit(this.text.charAt(i4))) {
                    while (i4 < this.text.length() && Character.isDigit(this.text.charAt(i4))) {
                        i4++;
                    }
                    i3 = i4;
                }
                if (i3 != this.text.length()) {
                    char cCharAt2 = this.text.charAt(i3);
                    if (cCharAt2 == '?') {
                        int i5 = i3 + 1;
                        if (i5 == this.text.length()) {
                            z2 = true;
                        } else {
                            char cCharAt3 = this.text.charAt(i5);
                            if (Character.isWhitespace(cCharAt3) || isPunctuation(cCharAt3)) {
                                z2 = true;
                            }
                        }
                    } else if (isPunctuation(cCharAt2) || Character.isWhitespace(cCharAt2)) {
                        z2 = true;
                    } else if (cCharAt2 != '/' && cCharAt2 != '#') {
                        return false;
                    }
                } else {
                    z2 = true;
                }
                str = "http://";
            }
            if (!z2) {
                while (i3 < this.text.length() && !Character.isWhitespace(this.text.charAt(i3))) {
                    i3++;
                }
            }
            String strSubstring = this.text.substring(i2, i3);
            addURLToken(str + strSubstring, strSubstring);
            this.nextChar = i3;
            return true;
        }
        return false;
    }

    public static String reverse(String str) {
        StringBuilder sb = new StringBuilder();
        for (int length = str.length() - 1; length >= 0; length--) {
            sb.append(str.charAt(length));
        }
        return sb.toString();
    }

    public static Token tokenForUrl(String str, String str2) {
        if (str == null) {
            return null;
        }
        Video videoMatchURL = Video.matchURL(str, str2);
        if (videoMatchURL != null) {
            return videoMatchURL;
        }
        YouTubeVideo youTubeVideoMatchURL = YouTubeVideo.matchURL(str, str2);
        if (youTubeVideoMatchURL != null) {
            return youTubeVideoMatchURL;
        }
        Photo photoMatchURL = Photo.matchURL(str, str2);
        if (photoMatchURL != null) {
            return photoMatchURL;
        }
        FlickrPhoto flickrPhotoMatchURL = FlickrPhoto.matchURL(str, str2);
        return flickrPhotoMatchURL != null ? flickrPhotoMatchURL : new Link(str, str2);
    }

    public final Part getPart(int i2) {
        return this.parts.get(i2);
    }

    public final int getPartCount() {
        return this.parts.size();
    }

    public final List<Part> getParts() {
        return this.parts;
    }

    public final String getRawText() {
        return this.text;
    }

    public abstract Resources getResources();

    public void parse() {
        boolean z2;
        String str = null;
        if (parseMusicTrack()) {
            buildParts(null);
            return;
        }
        int i2 = 0;
        if (this.parseMeText && this.text.startsWith("/me") && this.text.length() > 3 && Character.isWhitespace(this.text.charAt(3))) {
            String strSubstring = this.text.substring(0, 4);
            this.text = this.text.substring(4);
            str = strSubstring;
        }
        while (true) {
            while (true) {
                if (this.nextChar >= this.text.length()) {
                    for (int i3 = 0; i3 < this.tokens.size(); i3++) {
                        if (this.tokens.get(i3).isMedia()) {
                            if (i3 > 0) {
                                int i4 = i3 - 1;
                                if (this.tokens.get(i4) instanceof Html) {
                                    ((Html) this.tokens.get(i4)).trimLeadingWhitespace();
                                }
                            }
                            int i5 = i3 + 1;
                            if (i5 < this.tokens.size() && (this.tokens.get(i5) instanceof Html)) {
                                ((Html) this.tokens.get(i5)).trimTrailingWhitespace();
                            }
                        }
                    }
                    while (i2 < this.tokens.size()) {
                        if (this.tokens.get(i2).isHtml() && this.tokens.get(i2).toHtml(true).length() == 0) {
                            this.tokens.remove(i2);
                            i2--;
                        }
                        i2++;
                    }
                    buildParts(str);
                    return;
                }
                if (!isWordBreak(this.nextChar) && (!z2 || !isSmileyBreak(this.nextChar))) {
                    throw new AssertionError("last chunk did not end at word break");
                }
                z2 = parseSmiley();
            }
            if (!parseAcronym() && !parseURL() && !parseFormatting()) {
                parseText();
            }
        }
    }

    public String toHtml() {
        StringBuilder sb = new StringBuilder();
        for (Part part : this.parts) {
            boolean caps = false;
            sb.append("<p>");
            for (Token token : part.getTokens()) {
                if (token.isHtml()) {
                    sb.append(token.toHtml(caps));
                } else {
                    switch (AnonymousClass1.$SwitchMap$com$google$android$util$AbstractMessageParser$Token$Type[token.getType().ordinal()]) {
                        case 1:
                            sb.append("<a href=\"");
                            sb.append(((Link) token).getURL());
                            sb.append("\">");
                            sb.append(token.getRawText());
                            sb.append("</a>");
                            break;
                        case 2:
                            sb.append(token.getRawText());
                            break;
                        case 3:
                            sb.append(token.getRawText());
                            break;
                        case 4:
                            sb.append(((MusicTrack) token).getTrack());
                            break;
                        case 5:
                            sb.append("<a href=\"");
                            sb.append(Video.getURL(((Video) token).getDocID()));
                            sb.append("\">");
                            sb.append(token.getRawText());
                            sb.append("</a>");
                            break;
                        case 6:
                            sb.append("<a href=\"");
                            sb.append(YouTubeVideo.getURL(((YouTubeVideo) token).getDocID()));
                            sb.append("\">");
                            sb.append(token.getRawText());
                            sb.append("</a>");
                            break;
                        case 7:
                            sb.append("<a href=\"");
                            Photo photo = (Photo) token;
                            sb.append(Photo.getAlbumURL(photo.getUser(), photo.getAlbum()));
                            sb.append("\">");
                            sb.append(token.getRawText());
                            sb.append("</a>");
                            break;
                        case 8:
                            sb.append("<a href=\"");
                            sb.append(((FlickrPhoto) token).getUrl());
                            sb.append("\">");
                            sb.append(token.getRawText());
                            sb.append("</a>");
                            break;
                        default:
                            throw new AssertionError("unknown token type: " + token.getType());
                    }
                }
                if (token.controlCaps()) {
                    caps = token.setCaps();
                }
            }
            sb.append("</p>\n");
        }
        return sb.toString();
    }

    public static class Html extends Token {
        private String html;

        public Html(String str, String str2) {
            super(Token.Type.HTML, str);
            this.html = str2;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public List<String> getInfo() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public boolean isHtml() {
            return true;
        }

        @Override // com.google.android.util.AbstractMessageParser.Token
        public String toHtml(boolean z2) {
            return z2 ? this.html.toUpperCase() : this.html;
        }

        public void trimLeadingWhitespace() {
            this.text = trimLeadingWhitespace(this.text);
            this.html = trimLeadingWhitespace(this.html);
        }

        public void trimTrailingWhitespace() {
            this.text = trimTrailingWhitespace(this.text);
            this.html = trimTrailingWhitespace(this.html);
        }

        private static String trimLeadingWhitespace(String str) {
            int i2 = 0;
            while (i2 < str.length() && Character.isWhitespace(str.charAt(i2))) {
                i2++;
            }
            return str.substring(i2);
        }

        public static String trimTrailingWhitespace(String str) {
            int length = str.length();
            while (length > 0 && Character.isWhitespace(str.charAt(length - 1))) {
                length--;
            }
            return str.substring(0, length);
        }
    }

    public AbstractMessageParser(String str, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.text = str;
        this.nextChar = 0;
        this.nextClass = 10;
        this.parts = new ArrayList<>();
        this.tokens = new ArrayList<>();
        this.formatStart = new HashMap<>();
        this.parseSmilies = z2;
        this.parseAcronyms = z3;
        this.parseFormatting = z4;
        this.parseUrls = z5;
        this.parseMusic = z6;
        this.parseMeText = z7;
    }

    private static TrieNode longestMatch(TrieNode trieNode, AbstractMessageParser abstractMessageParser, int i2, boolean z2) {
        TrieNode trieNode2 = null;
        while (i2 < abstractMessageParser.getRawText().length()) {
            int i3 = i2 + 1;
            trieNode = trieNode.getChild(abstractMessageParser.getRawText().charAt(i2));
            if (trieNode == null) {
                break;
            }
            if (trieNode.exists() && (abstractMessageParser.isWordBreak(i3) || (z2 && abstractMessageParser.isSmileyBreak(i3)))) {
                trieNode2 = trieNode;
            }
            i2 = i3;
        }
        return trieNode2;
    }
}
