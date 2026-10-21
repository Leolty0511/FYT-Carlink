package android.text.style;

/* JADX INFO: loaded from: classes.dex */
public interface TabStopSpan extends ParagraphStyle {

    public static class Standard implements TabStopSpan {
        private int mTab;

        public Standard(int i2) {
            this.mTab = i2;
        }

        @Override // android.text.style.TabStopSpan
        public int getTabStop() {
            return this.mTab;
        }
    }

    int getTabStop();
}
