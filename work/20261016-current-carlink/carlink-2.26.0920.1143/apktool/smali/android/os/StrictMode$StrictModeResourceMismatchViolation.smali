.class Landroid/os/StrictMode$StrictModeResourceMismatchViolation;
.super Landroid/os/StrictMode$StrictModeViolation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrictModeResourceMismatchViolation"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2}, Landroid/os/StrictMode$StrictModeViolation;-><init>(IILjava/lang/String;)V

    return-void
.end method
