.class public Lcom/android/internal/os/BinderInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderInternal$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/os/BinderInternal$a;",
            ">;"
        }
    .end annotation
.end field

.field public static b:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/android/internal/os/BinderInternal$a;

    invoke-direct {v1}, Lcom/android/internal/os/BinderInternal$a;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/os/BinderInternal;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xab5

    .line 1
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method public static b()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/android/internal/os/BinderInternal;->b:J

    return-wide v0
.end method

.method public static final native getContextObject()Landroid/os/IBinder;
.end method

.method public static final native handleGc()V
.end method
