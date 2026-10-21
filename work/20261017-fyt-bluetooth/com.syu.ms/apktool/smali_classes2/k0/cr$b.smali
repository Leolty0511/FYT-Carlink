.class public Lk0/cr$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/cr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/cr;


# direct methods
.method public constructor <init>(Lk0/cr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/cr$b;->a:Lk0/cr;

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

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 4
    iget-object v2, p0, Lk0/cr$b;->a:Lk0/cr;

    invoke-static {v2}, Lk0/cr;->k3(Lk0/cr;)I

    move-result v2

    iget v3, v0, Landroid/text/format/Time;->hour:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lk0/cr$b;->a:Lk0/cr;

    invoke-static {v2}, Lk0/cr;->m3(Lk0/cr;)I

    move-result v2

    iget v3, v0, Landroid/text/format/Time;->minute:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lk0/cr$b;->a:Lk0/cr;

    invoke-static {v2}, Lk0/cr;->o3(Lk0/cr;)I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, -0x38

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    aput v4, v2, v3

    .line 5
    iget v3, v0, Landroid/text/format/Time;->minute:I

    aput v3, v2, v4

    const/4 v3, 0x4

    iget v4, v0, Landroid/text/format/Time;->hour:I

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v1, v2, v3

    invoke-static {v2}, Lz/k;->s([I)V

    .line 6
    iget-object v2, p0, Lk0/cr$b;->a:Lk0/cr;

    iget v3, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v2, v3}, Lk0/cr;->l3(Lk0/cr;I)I

    .line 7
    iget-object v2, p0, Lk0/cr$b;->a:Lk0/cr;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v2, v0}, Lk0/cr;->n3(Lk0/cr;I)I

    .line 8
    iget-object v0, p0, Lk0/cr$b;->a:Lk0/cr;

    invoke-static {v0, v1}, Lk0/cr;->p3(Lk0/cr;I)I

    :cond_1
    return-void
.end method
