.class Landroid/os/StrictMode$InstanceCountViolation;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceCountViolation"
.end annotation


# static fields
.field private static final FAKE_STACK:[Ljava/lang/StackTraceElement;


# instance fields
.field public final mClass:Ljava/lang/Class;

.field public final mInstances:J

.field public final mLimit:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/StackTraceElement;

    .line 1
    new-instance v2, Ljava/lang/StackTraceElement;

    const-string v3, "android.os.StrictMode"

    const-string/jumbo v4, "setClassInstanceLimit"

    const-string v5, "StrictMode.java"

    invoke-direct {v2, v3, v4, v5, v0}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    sput-object v1, Landroid/os/StrictMode$InstanceCountViolation;->FAKE_STACK:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;JI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; instances="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v0, Landroid/os/StrictMode$InstanceCountViolation;->FAKE_STACK:[Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 3
    iput-object p1, p0, Landroid/os/StrictMode$InstanceCountViolation;->mClass:Ljava/lang/Class;

    .line 4
    iput-wide p2, p0, Landroid/os/StrictMode$InstanceCountViolation;->mInstances:J

    .line 5
    iput p4, p0, Landroid/os/StrictMode$InstanceCountViolation;->mLimit:I

    return-void
.end method
