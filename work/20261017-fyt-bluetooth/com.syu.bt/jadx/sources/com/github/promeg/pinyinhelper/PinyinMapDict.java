package com.github.promeg.pinyinhelper;

import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class PinyinMapDict implements PinyinDict {
    public abstract Map<String, String[]> mapping();

    @Override // com.github.promeg.pinyinhelper.PinyinDict
    public Set<String> words() {
        if (mapping() != null) {
            return mapping().keySet();
        }
        return null;
    }

    @Override // com.github.promeg.pinyinhelper.PinyinDict
    public String[] toPinyin(String word) {
        if (mapping() != null) {
            return mapping().get(word);
        }
        return null;
    }
}
