package com.github.promeg.pinyinhelper;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import org.ahocorasick.trie.Emit;

/* JADX INFO: loaded from: classes.dex */
final class ForwardLongestSelector implements SegmentationSelector {
    static final Engine.EmitComparator HIT_COMPARATOR = new Engine.EmitComparator();

    ForwardLongestSelector() {
    }

    @Override // com.github.promeg.pinyinhelper.SegmentationSelector
    public List<Emit> select(Collection<Emit> emits) {
        if (emits == null) {
            return null;
        }
        List<Emit> results = new ArrayList<>((Collection<? extends Emit>) emits);
        Collections.sort(results, HIT_COMPARATOR);
        int endValueToRemove = -1;
        Set<Emit> emitToRemove = new TreeSet<>();
        for (Emit emit : results) {
            if (emit.getStart() > endValueToRemove && emit.getEnd() > endValueToRemove) {
                endValueToRemove = emit.getEnd();
            } else {
                emitToRemove.add(emit);
            }
        }
        results.removeAll(emitToRemove);
        return results;
    }
}
