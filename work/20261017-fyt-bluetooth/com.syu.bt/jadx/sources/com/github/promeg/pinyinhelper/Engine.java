package com.github.promeg.pinyinhelper;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.ahocorasick.trie.Emit;
import org.ahocorasick.trie.Trie;

/* JADX INFO: loaded from: classes.dex */
final class Engine {
    static final EmitComparator EMIT_COMPARATOR = new EmitComparator();

    private Engine() {
    }

    static String toPinyin(String inputStr, Trie trie, List<PinyinDict> pinyinDictList, String separator, SegmentationSelector selector) {
        if (inputStr != null && inputStr.length() != 0) {
            if (trie == null || selector == null) {
                StringBuffer resultPinyinStrBuf = new StringBuffer();
                for (int i = 0; i < inputStr.length(); i++) {
                    resultPinyinStrBuf.append(Pinyin.toPinyin(inputStr.charAt(i)));
                    if (i != inputStr.length() - 1) {
                        resultPinyinStrBuf.append(separator);
                    }
                }
                return resultPinyinStrBuf.toString();
            }
            List<Emit> selectedEmits = selector.select(trie.parseText(inputStr));
            Collections.sort(selectedEmits, EMIT_COMPARATOR);
            StringBuffer resultPinyinStrBuf2 = new StringBuffer();
            int nextHitIndex = 0;
            int i2 = 0;
            while (i2 < inputStr.length()) {
                if (nextHitIndex < selectedEmits.size() && i2 == selectedEmits.get(nextHitIndex).getStart()) {
                    String[] fromDicts = pinyinFromDict(selectedEmits.get(nextHitIndex).getKeyword(), pinyinDictList);
                    for (int j = 0; j < fromDicts.length; j++) {
                        resultPinyinStrBuf2.append(fromDicts[j].toUpperCase());
                        if (j != fromDicts.length - 1) {
                            resultPinyinStrBuf2.append(separator);
                        }
                    }
                    i2 += selectedEmits.get(nextHitIndex).size();
                    nextHitIndex++;
                } else {
                    resultPinyinStrBuf2.append(Pinyin.toPinyin(inputStr.charAt(i2)));
                    i2++;
                }
                if (i2 != inputStr.length()) {
                    resultPinyinStrBuf2.append(separator);
                }
            }
            return resultPinyinStrBuf2.toString();
        }
        return inputStr;
    }

    static String[] pinyinFromDict(String wordInDict, List<PinyinDict> pinyinDictSet) {
        if (pinyinDictSet != null) {
            for (PinyinDict dict : pinyinDictSet) {
                if (dict != null && dict.words() != null && dict.words().contains(wordInDict)) {
                    return dict.toPinyin(wordInDict);
                }
            }
        }
        throw new IllegalArgumentException("No pinyin dict contains word: " + wordInDict);
    }

    static final class EmitComparator implements Comparator<Emit> {
        EmitComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Emit o1, Emit o2) {
            int i = -1;
            if (o1.getStart() == o2.getStart()) {
                if (o1.size() < o2.size()) {
                    return 1;
                }
                return o1.size() == o2.size() ? 0 : -1;
            }
            if (o1.getStart() >= o2.getStart()) {
                i = o1.getStart() == o2.getStart() ? 0 : 1;
            }
            return i;
        }
    }
}
