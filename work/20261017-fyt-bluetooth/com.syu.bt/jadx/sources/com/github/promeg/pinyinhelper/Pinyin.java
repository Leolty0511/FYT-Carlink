package com.github.promeg.pinyinhelper;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.ahocorasick.trie.Trie;

/* JADX INFO: loaded from: classes.dex */
public final class Pinyin {
    static Trie mTrieDict = null;
    static SegmentationSelector mSelector = null;
    static List<PinyinDict> mPinyinDicts = null;

    private Pinyin() {
    }

    public static void init(Config config) {
        if (config == null) {
            mPinyinDicts = null;
            mTrieDict = null;
            mSelector = null;
        } else if (config.valid()) {
            mPinyinDicts = Collections.unmodifiableList(config.getPinyinDicts());
            mTrieDict = Utils.dictsToTrie(config.getPinyinDicts());
            mSelector = config.getSelector();
        }
    }

    public static void add(PinyinDict dict) {
        if (dict != null && dict.words() != null && dict.words().size() != 0) {
            init(new Config(mPinyinDicts).with(dict));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Config newConfig() {
        return new Config(null);
    }

    public static String toPinyin(String str, String separator) {
        return Engine.toPinyin(str, mTrieDict, mPinyinDicts, separator, mSelector);
    }

    public static String toPinyin(char c) {
        if (isChinese(c)) {
            if (c == 12295) {
                return "LING";
            }
            return PinyinData.PINYIN_TABLE[getPinyinCode(c)];
        }
        return String.valueOf(c);
    }

    public static boolean isChinese(char c) {
        return (19968 <= c && c <= 40869 && getPinyinCode(c) > 0) || 12295 == c;
    }

    private static int getPinyinCode(char c) {
        int offset = c - 19968;
        if (offset >= 0 && offset < 7000) {
            return decodeIndex(PinyinCode1.PINYIN_CODE_PADDING, PinyinCode1.PINYIN_CODE, offset);
        }
        if (7000 <= offset && offset < 14000) {
            return decodeIndex(PinyinCode2.PINYIN_CODE_PADDING, PinyinCode2.PINYIN_CODE, offset - 7000);
        }
        return decodeIndex(PinyinCode3.PINYIN_CODE_PADDING, PinyinCode3.PINYIN_CODE, offset - 14000);
    }

    private static short decodeIndex(byte[] paddings, byte[] indexes, int offset) {
        int index1 = offset / 8;
        int index2 = offset % 8;
        short realIndex = (short) (indexes[offset] & 255);
        if ((paddings[index1] & PinyinData.BIT_MASKS[index2]) != 0) {
            return (short) (realIndex | 256);
        }
        return realIndex;
    }

    public static final class Config {
        List<PinyinDict> mPinyinDicts;
        SegmentationSelector mSelector;

        private Config(List<PinyinDict> dicts) {
            if (dicts != null) {
                this.mPinyinDicts = new ArrayList(dicts);
            }
            this.mSelector = new ForwardLongestSelector();
        }

        public Config with(PinyinDict dict) {
            if (dict != null) {
                if (this.mPinyinDicts == null) {
                    this.mPinyinDicts = new ArrayList();
                    this.mPinyinDicts.add(dict);
                } else if (!this.mPinyinDicts.contains(dict)) {
                    this.mPinyinDicts.add(dict);
                }
            }
            return this;
        }

        boolean valid() {
            return (getPinyinDicts() == null || getSelector() == null) ? false : true;
        }

        SegmentationSelector getSelector() {
            return this.mSelector;
        }

        List<PinyinDict> getPinyinDicts() {
            return this.mPinyinDicts;
        }
    }
}
