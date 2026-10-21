package android.text.util;

import android.widget.MultiAutoCompleteTextView;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class Rfc822Tokenizer implements MultiAutoCompleteTextView.Tokenizer {
    private static void crunch(StringBuilder sb) {
        int length = sb.length();
        int i2 = 0;
        while (i2 < length) {
            if (sb.charAt(i2) == 0) {
                if (i2 != 0 && i2 != length - 1) {
                    int i3 = i2 - 1;
                    if (sb.charAt(i3) != ' ' && sb.charAt(i3) != 0) {
                        int i4 = i2 + 1;
                        if (sb.charAt(i4) != ' ' && sb.charAt(i4) != 0) {
                            i2 = i4;
                        }
                    }
                }
                sb.deleteCharAt(i2);
                length--;
            } else {
                i2++;
            }
        }
        for (int i5 = 0; i5 < length; i5++) {
            if (sb.charAt(i5) == 0) {
                sb.setCharAt(i5, ' ');
            }
        }
    }

    public static void tokenize(CharSequence charSequence, Collection<Rfc822Token> collection) {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt != ',' && cCharAt != ';') {
                if (cCharAt != '\"') {
                    if (cCharAt != '(') {
                        if (cCharAt == '<') {
                            while (true) {
                                i2++;
                                if (i2 >= length) {
                                    break;
                                }
                                char cCharAt2 = charSequence.charAt(i2);
                                if (cCharAt2 != '>') {
                                    sb2.append(cCharAt2);
                                }
                            }
                        } else if (cCharAt == ' ') {
                            sb.append((char) 0);
                        } else {
                            sb.append(cCharAt);
                        }
                        i2++;
                        break;
                        break;
                    }
                    i2++;
                    int i3 = 1;
                    while (i2 < length && i3 > 0) {
                        char cCharAt3 = charSequence.charAt(i2);
                        if (cCharAt3 == ')') {
                            if (i3 > 1) {
                                sb3.append(cCharAt3);
                            }
                            i3--;
                        } else if (cCharAt3 == '(') {
                            sb3.append(cCharAt3);
                            i3++;
                        } else if (cCharAt3 == '\\') {
                            int i4 = i2 + 1;
                            if (i4 < length) {
                                sb3.append(charSequence.charAt(i4));
                            }
                            i2 += 2;
                        } else {
                            sb3.append(cCharAt3);
                        }
                        i2++;
                    }
                } else {
                    while (true) {
                        i2++;
                        while (true) {
                            if (i2 >= length) {
                                break;
                            }
                            char cCharAt4 = charSequence.charAt(i2);
                            if (cCharAt4 == '\"') {
                                i2++;
                                break;
                            } else if (cCharAt4 == '\\') {
                                int i5 = i2 + 1;
                                if (i5 < length) {
                                    sb.append(charSequence.charAt(i5));
                                }
                                i2 += 2;
                            } else {
                                sb.append(cCharAt4);
                            }
                        }
                    }
                }
            } else {
                do {
                    i2++;
                    if (i2 >= length) {
                        break;
                    }
                } while (charSequence.charAt(i2) == ' ');
                crunch(sb);
                if (sb2.length() > 0) {
                    collection.add(new Rfc822Token(sb.toString(), sb2.toString(), sb3.toString()));
                } else if (sb.length() > 0) {
                    collection.add(new Rfc822Token(null, sb.toString(), sb3.toString()));
                }
                sb.setLength(0);
                sb2.setLength(0);
                sb3.setLength(0);
            }
        }
        crunch(sb);
        if (sb2.length() > 0) {
            collection.add(new Rfc822Token(sb.toString(), sb2.toString(), sb3.toString()));
        } else if (sb.length() > 0) {
            collection.add(new Rfc822Token(null, sb.toString(), sb3.toString()));
        }
    }

    @Override // android.widget.MultiAutoCompleteTextView.Tokenizer
    public int findTokenEnd(CharSequence charSequence, int i2) {
        int length = charSequence.length();
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt != ',' && cCharAt != ';') {
                if (cCharAt != '\"') {
                    if (cCharAt != '(') {
                        if (cCharAt == '<') {
                            while (true) {
                                i2++;
                                if (i2 >= length) {
                                    break;
                                }
                                if (charSequence.charAt(i2) == '>') {
                                }
                            }
                        }
                        i2++;
                        break;
                        break;
                    }
                    i2++;
                    int i3 = 1;
                    while (i2 < length && i3 > 0) {
                        char cCharAt2 = charSequence.charAt(i2);
                        if (cCharAt2 == ')') {
                            i3--;
                        } else if (cCharAt2 == '(') {
                            i3++;
                        } else if (cCharAt2 == '\\' && i2 + 1 < length) {
                            i2 += 2;
                        }
                        i2++;
                    }
                } else {
                    while (true) {
                        i2++;
                        while (i2 < length) {
                            char cCharAt3 = charSequence.charAt(i2);
                            if (cCharAt3 == '\"') {
                                i2++;
                                break;
                            }
                            if (cCharAt3 == '\\' && i2 + 1 < length) {
                                i2 += 2;
                            }
                        }
                        break;
                    }
                }
            } else {
                break;
            }
        }
        return i2;
    }

    @Override // android.widget.MultiAutoCompleteTextView.Tokenizer
    public int findTokenStart(CharSequence charSequence, int i2) {
        int iFindTokenEnd = 0;
        while (true) {
            int i3 = iFindTokenEnd;
            while (iFindTokenEnd < i2) {
                iFindTokenEnd = findTokenEnd(charSequence, iFindTokenEnd);
                if (iFindTokenEnd < i2) {
                    do {
                        iFindTokenEnd++;
                        if (iFindTokenEnd >= i2) {
                            break;
                        }
                    } while (charSequence.charAt(iFindTokenEnd) == ' ');
                    if (iFindTokenEnd < i2) {
                    }
                }
            }
            return i3;
        }
    }

    @Override // android.widget.MultiAutoCompleteTextView.Tokenizer
    public CharSequence terminateToken(CharSequence charSequence) {
        return ((Object) charSequence) + ", ";
    }

    public static Rfc822Token[] tokenize(CharSequence charSequence) {
        ArrayList arrayList = new ArrayList();
        tokenize(charSequence, arrayList);
        return (Rfc822Token[]) arrayList.toArray(new Rfc822Token[arrayList.size()]);
    }
}
