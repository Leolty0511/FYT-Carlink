package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;

/* JADX INFO: loaded from: classes4.dex */
@GwtIncompatible
@ElementTypesAreNonnullByDefault
class ImmutableMapEntry<K, V> extends ImmutableEntry<K, V> {

    public static final class NonTerminalImmutableBiMapEntry<K, V> extends NonTerminalImmutableMapEntry<K, V> {
        private final transient ImmutableMapEntry<K, V> nextInValueBucket;

        public NonTerminalImmutableBiMapEntry(K k2, V v2, ImmutableMapEntry<K, V> immutableMapEntry, ImmutableMapEntry<K, V> immutableMapEntry2) {
            super(k2, v2, immutableMapEntry);
            this.nextInValueBucket = immutableMapEntry2;
        }

        @Override // com.google.common.collect.ImmutableMapEntry
        public ImmutableMapEntry<K, V> getNextInValueBucket() {
            return this.nextInValueBucket;
        }
    }

    public static class NonTerminalImmutableMapEntry<K, V> extends ImmutableMapEntry<K, V> {
        private final transient ImmutableMapEntry<K, V> nextInKeyBucket;

        public NonTerminalImmutableMapEntry(K k2, V v2, ImmutableMapEntry<K, V> immutableMapEntry) {
            super(k2, v2);
            this.nextInKeyBucket = immutableMapEntry;
        }

        @Override // com.google.common.collect.ImmutableMapEntry
        public final ImmutableMapEntry<K, V> getNextInKeyBucket() {
            return this.nextInKeyBucket;
        }

        @Override // com.google.common.collect.ImmutableMapEntry
        public final boolean isReusable() {
            return false;
        }
    }

    public ImmutableMapEntry(K k2, V v2) {
        super(k2, v2);
        CollectPreconditions.checkEntryNotNull(k2, v2);
    }

    public static <K, V> ImmutableMapEntry<K, V>[] createEntryArray(int i2) {
        return new ImmutableMapEntry[i2];
    }

    public ImmutableMapEntry<K, V> getNextInKeyBucket() {
        return null;
    }

    public ImmutableMapEntry<K, V> getNextInValueBucket() {
        return null;
    }

    public boolean isReusable() {
        return true;
    }

    public ImmutableMapEntry(ImmutableMapEntry<K, V> immutableMapEntry) {
        super(immutableMapEntry.getKey(), immutableMapEntry.getValue());
    }
}
