.class public Lk0/vr$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vr;


# direct methods
.method public constructor <init>(Lk0/vr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vr$c;->a:Lk0/vr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 3
    iget v3, v0, Landroid/text/format/Time;->hour:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x7f

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v1, [I

    .line 4
    iget v0, v0, Landroid/text/format/Time;->minute:I

    aput v0, v1, v4

    const/16 v0, 0x80

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    return-void
.end method
