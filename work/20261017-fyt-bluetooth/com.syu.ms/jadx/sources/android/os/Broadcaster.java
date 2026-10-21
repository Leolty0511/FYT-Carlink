package android.os;

/* JADX INFO: loaded from: classes.dex */
public class Broadcaster {
    private Registration mReg;

    public class Registration {
        public Registration next;
        public Registration prev;
        public int senderWhat;
        public int[] targetWhats;
        public Handler[] targets;

        private Registration() {
        }
    }

    public void broadcast(Message message) {
        synchronized (this) {
            Registration registration = this.mReg;
            if (registration == null) {
                return;
            }
            int i2 = message.what;
            Registration registration2 = registration;
            while (registration2.senderWhat < i2 && (registration2 = registration2.next) != registration) {
            }
            if (registration2.senderWhat == i2) {
                Handler[] handlerArr = registration2.targets;
                int[] iArr = registration2.targetWhats;
                int length = handlerArr.length;
                for (int i3 = 0; i3 < length; i3++) {
                    Handler handler = handlerArr[i3];
                    Message messageObtain = Message.obtain();
                    messageObtain.copyFrom(message);
                    messageObtain.what = iArr[i3];
                    handler.sendMessage(messageObtain);
                }
            }
        }
    }

    public void cancelRequest(int i2, Handler handler, int i3) {
        synchronized (this) {
            Registration registration = this.mReg;
            if (registration == null) {
                return;
            }
            Registration registration2 = registration;
            while (registration2.senderWhat < i2 && (registration2 = registration2.next) != registration) {
            }
            if (registration2.senderWhat == i2) {
                Handler[] handlerArr = registration2.targets;
                int[] iArr = registration2.targetWhats;
                int length = handlerArr.length;
                for (int i4 = 0; i4 < length; i4++) {
                    if (handlerArr[i4] == handler && iArr[i4] == i3) {
                        int i5 = length - 1;
                        Handler[] handlerArr2 = new Handler[i5];
                        registration2.targets = handlerArr2;
                        registration2.targetWhats = new int[i5];
                        if (i4 > 0) {
                            System.arraycopy(handlerArr, 0, handlerArr2, 0, i4);
                            System.arraycopy(iArr, 0, registration2.targetWhats, 0, i4);
                        }
                        int i6 = (length - i4) - 1;
                        if (i6 == 0) {
                            break;
                        }
                        int i7 = i4 + 1;
                        System.arraycopy(handlerArr, i7, registration2.targets, i4, i6);
                        System.arraycopy(iArr, i7, registration2.targetWhats, i4, i6);
                        break;
                    }
                }
            }
        }
    }

    public void dumpRegistrations() {
        synchronized (this) {
            Registration registration = this.mReg;
            System.out.println("Broadcaster " + this + " {");
            if (registration != null) {
                Registration registration2 = registration;
                do {
                    System.out.println("    senderWhat=" + registration2.senderWhat);
                    int length = registration2.targets.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        System.out.println("        [" + registration2.targetWhats[i2] + "] " + registration2.targets[i2]);
                    }
                    registration2 = registration2.next;
                } while (registration2 != registration);
            }
            System.out.println("}");
        }
    }

    public void request(int i2, Handler handler, int i3) {
        synchronized (this) {
            Registration registration = this.mReg;
            int i4 = 0;
            if (registration == null) {
                Registration registration2 = new Registration();
                registration2.senderWhat = i2;
                registration2.targets = new Handler[]{handler};
                registration2.targetWhats = new int[]{i3};
                this.mReg = registration2;
                registration2.next = registration2;
                registration2.prev = registration2;
            } else {
                Registration registration3 = registration;
                while (registration3.senderWhat < i2 && (registration3 = registration3.next) != registration) {
                }
                if (registration3.senderWhat != i2) {
                    Registration registration4 = new Registration();
                    registration4.senderWhat = i2;
                    registration4.targets = new Handler[1];
                    registration4.targetWhats = new int[1];
                    registration4.next = registration3;
                    registration4.prev = registration3.prev;
                    registration3.prev.next = registration4;
                    registration3.prev = registration4;
                    if (registration3 == this.mReg && registration3.senderWhat > i2) {
                        this.mReg = registration4;
                    }
                    registration3 = registration4;
                } else {
                    Handler[] handlerArr = registration3.targets;
                    int length = handlerArr.length;
                    int[] iArr = registration3.targetWhats;
                    for (int i5 = 0; i5 < length; i5++) {
                        if (handlerArr[i5] == handler && iArr[i5] == i3) {
                            return;
                        }
                    }
                    int i6 = length + 1;
                    Handler[] handlerArr2 = new Handler[i6];
                    registration3.targets = handlerArr2;
                    System.arraycopy(handlerArr, 0, handlerArr2, 0, length);
                    int[] iArr2 = new int[i6];
                    registration3.targetWhats = iArr2;
                    System.arraycopy(iArr, 0, iArr2, 0, length);
                    i4 = length;
                }
                registration3.targets[i4] = handler;
                registration3.targetWhats[i4] = i3;
            }
        }
    }
}
