.class public Lf1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/o$f;,
        Lf1/o$d;,
        Lf1/o$e;,
        Lf1/o$b;,
        Lf1/o$a;,
        Lf1/o$c;
    }
.end annotation


# static fields
.field public static l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lf1/o$f;",
            "Lf1/o$d;",
            ">;"
        }
    .end annotation
.end field

.field public static m:Lf1/o;


# instance fields
.field public final a:Z

.field public b:Lf1/o$c;

.field public c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lf1/o$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroid/util/SparseIntArray;

.field public g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lp1/a;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:I

.field public j:Landroid/util/SparseIntArray;

.field public k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lf1/o;->l:Ljava/util/HashMap;

    .line 2
    new-instance v1, Lf1/o$f;

    const-string v2, "TP2850"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lf1/o$d;

    const-class v5, Lf1/b;

    const-string v6, "/dev/i2c-1"

    const/16 v7, 0x44

    invoke-direct {v4, v6, v7, v5}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lf1/o;->l:Ljava/util/HashMap;

    new-instance v1, Lf1/o$f;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lf1/o$d;

    const-class v5, Lf1/b;

    const-string v6, "/dev/i2c-0"

    invoke-direct {v2, v6, v7, v5}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lf1/o;->l:Ljava/util/HashMap;

    new-instance v1, Lf1/o$f;

    const-string v2, "TP2860"

    invoke-direct {v1, v2, v4}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lf1/o$d;

    const-class v5, Lf1/d;

    invoke-direct {v2, v6, v7, v5}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lf1/o;->l:Ljava/util/HashMap;

    new-instance v1, Lf1/o$f;

    const-string v2, "TP2815"

    invoke-direct {v1, v2, v4}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lf1/o$d;

    const-class v5, Lf1/a;

    invoke-direct {v2, v6, v7, v5}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lf1/o;->l:Ljava/util/HashMap;

    new-instance v1, Lf1/o$f;

    const-string v2, "TP2854"

    invoke-direct {v1, v2, v4}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lf1/o$d;

    const-class v4, Lf1/c;

    invoke-direct {v2, v6, v7, v4}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lf1/o;->l:Ljava/util/HashMap;

    new-instance v1, Lf1/o$f;

    const-string v2, "IT8641"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lf1/o$d;

    const-class v5, Lf1/k;

    const/16 v7, 0x38

    invoke-direct {v2, v6, v7, v5}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lbase/Configure$Property;->b0:Lbase/Configure$Property;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    sget-object v0, Lbase/Configure$Property;->a0:Lbase/Configure$Property;

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "HDMI-RV"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "LT6911"

    if-eqz v1, :cond_1

    .line 12
    sget-object v1, Lf1/o;->l:Ljava/util/HashMap;

    new-instance v5, Lf1/o$f;

    invoke-direct {v5, v2, v4}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lf1/o$d;

    const-class v8, Lf1/i;

    invoke-direct {v2, v6, v7, v8}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_1
    sget-object v1, Lf1/o;->l:Ljava/util/HashMap;

    new-instance v5, Lf1/o$f;

    invoke-direct {v5, v2, v4}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lf1/o$d;

    const/16 v7, 0x2b

    const-class v8, Lf1/i;

    invoke-direct {v2, v6, v7, v8}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "8918L"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x21

    const-string v2, "LT8918"

    if-eqz v0, :cond_2

    .line 15
    sget-object v0, Lf1/o;->l:Ljava/util/HashMap;

    new-instance v5, Lf1/o$f;

    invoke-direct {v5, v2, v4}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lf1/o$d;

    const-class v8, Lf1/m;

    invoke-direct {v7, v6, v1, v8}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lf1/o;->l:Ljava/util/HashMap;

    new-instance v5, Lf1/o$f;

    invoke-direct {v5, v2, v3}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lf1/o$d;

    const-class v3, Lf1/m;

    invoke-direct {v2, v6, v1, v3}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 17
    :cond_2
    sget-object v0, Lbase/Configure$Property;->j:Lbase/Configure$Property;

    invoke-virtual {v0, v4}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    .line 18
    sget-object v5, Lf1/o;->l:Ljava/util/HashMap;

    new-instance v7, Lf1/o$f;

    invoke-direct {v7, v2, v4}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lf1/o$d;

    if-eqz v0, :cond_3

    .line 19
    const-class v9, Lf1/n;

    goto :goto_1

    :cond_3
    const-class v9, Lf1/l;

    :goto_1
    invoke-direct {v8, v6, v1, v9}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 20
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v5, Lf1/o;->l:Ljava/util/HashMap;

    new-instance v7, Lf1/o$f;

    invoke-direct {v7, v2, v3}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lf1/o$d;

    if-eqz v0, :cond_4

    .line 22
    const-class v0, Lf1/n;

    goto :goto_2

    :cond_4
    const-class v0, Lf1/l;

    :goto_2
    invoke-direct {v2, v6, v1, v0}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 23
    invoke-virtual {v5, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :goto_3
    sget-object v0, Lf1/o;->l:Ljava/util/HashMap;

    new-instance v1, Lf1/o$f;

    const-string v2, "TC3587"

    invoke-direct {v1, v2, v4}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lf1/o$d;

    const/16 v3, 0xf

    const-class v4, Lf1/g;

    invoke-direct {v2, v6, v3, v4}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 25
    sput-object v0, Lf1/o;->m:Lf1/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf1/o;->a:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lf1/o;->b:Lf1/o$c;

    .line 4
    iput-object v1, p0, Lf1/o;->c:Landroid/util/SparseArray;

    .line 5
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lf1/o;->d:Landroid/util/SparseArray;

    .line 6
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lf1/o;->e:Landroid/util/SparseArray;

    .line 7
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lf1/o;->f:Landroid/util/SparseIntArray;

    .line 8
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lf1/o;->g:Ljava/util/HashMap;

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lf1/o;->h:I

    .line 10
    iput v0, p0, Lf1/o;->i:I

    .line 11
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lf1/o;->j:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lf1/o;->k:Z

    .line 13
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lf1/o;->c:Landroid/util/SparseArray;

    const-string v2, "sys.fyt.back_0_video_ic"

    const-string v3, ""

    .line 14
    invoke-static {v2, v3}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "========================>> back_0_video_ic  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DeviceManager"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {v2}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v4

    const-string v6, "NULL"

    if-nez v4, :cond_0

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 17
    iget-object v4, p0, Lf1/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_0

    .line 18
    iget-object v4, p0, Lf1/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const-string v2, "sys.fyt.front_video_ic"

    .line 19
    invoke-static {v2, v3}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "========================>> front_video_ic  = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {v2}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 22
    iget-object v4, p0, Lf1/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    .line 23
    iget-object v4, p0, Lf1/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    const-string v2, "sys.fyt.back_video_ic"

    .line 24
    invoke-static {v2, v3}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "========================>> back_video_ic  = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {v2}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 27
    iget-object v4, p0, Lf1/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_2

    .line 28
    iget-object v4, p0, Lf1/o;->e:Landroid/util/SparseArray;

    const/4 v7, 0x2

    invoke-virtual {v4, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    const-string v2, "ro.fyt.main_video_ic"

    .line 29
    invoke-static {v2, v3}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "========================>> main_video_ic  = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {v2}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 32
    iget-object v4, p0, Lf1/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_3

    .line 33
    iget-object v4, p0, Lf1/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    const-string v1, "ro.fyt.sub_video_ic"

    .line 34
    invoke-static {v1, v3}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========================>> sub_video_ic  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {v1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 37
    iget-object v2, p0, Lf1/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_4

    .line 38
    iget-object v2, p0, Lf1/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public static a(Lf1/o$f;Lf1/o$d;)V
    .locals 1

    .line 1
    sget-object v0, Lf1/o;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static g()Lf1/o;
    .locals 1

    .line 1
    sget-object v0, Lf1/o;->m:Lf1/o;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lf1/o;

    invoke-direct {v0}, Lf1/o;-><init>()V

    sput-object v0, Lf1/o;->m:Lf1/o;

    .line 3
    :cond_0
    sget-object v0, Lf1/o;->m:Lf1/o;

    return-object v0
.end method

.method public static i(ILjava/lang/String;)Lf1/o$d;
    .locals 1

    .line 1
    new-instance v0, Lf1/o$f;

    invoke-direct {v0, p1, p0}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    .line 2
    sget-object p0, Lf1/o;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf1/o$d;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -- "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method


# virtual methods
.method public A(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/o;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public B(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lf1/o;->C(II)Z

    move-result p1

    return p1
.end method

.method public C(II)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lf1/o;->k:Z

    if-nez v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3
    iget v1, p0, Lf1/o;->h:I

    if-eq v1, p1, :cond_1

    .line 4
    iput p1, p0, Lf1/o;->h:I

    .line 5
    invoke-virtual {p0, p2, p1}, Lf1/o;->w(II)V

    :cond_1
    if-gtz v0, :cond_2

    .line 6
    iget-boolean p1, p0, Lf1/o;->k:Z

    return p1

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 7
    iget-object v3, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 8
    invoke-virtual {p0, v3}, Lf1/o;->d(I)Lf1/q;

    move-result-object v4

    if-eqz v4, :cond_4

    if-ne v3, p1, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v1

    .line 9
    :goto_1
    iput-boolean v3, v4, Lf1/q;->D:Z

    if-eqz v3, :cond_4

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "========================>> isSupportReversing = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v4, Lf1/q;->D:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " Camera Id: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "DeviceManager"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {v4, p2}, Lf1/q;->K(I)V

    .line 12
    invoke-virtual {v4, p2}, Lf1/q;->j(I)V

    .line 13
    iput p2, p0, Lf1/o;->i:I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_5
    iget-boolean p1, p0, Lf1/o;->k:Z

    return p1
.end method

.method public D(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf1/o;->d(I)Lf1/q;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lf1/q;->O(I)V

    :cond_0
    return-void
.end method

.method public E(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf1/o;->d(I)Lf1/q;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lf1/q;->P(I)V

    :cond_0
    return-void
.end method

.method public F(II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf1/o;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lf1/o;->c(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v2, p0, Lf1/o;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0, v0}, Lf1/o;->d(I)Lf1/q;

    move-result-object v1

    .line 5
    instance-of v2, v1, Lf1/s;

    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {v1}, Lf1/q;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    check-cast v1, Lf1/s;

    invoke-virtual {v1, p1, p2}, Lf1/s;->c0(II)V

    goto :goto_0

    .line 8
    :cond_3
    check-cast v1, Lf1/s;

    invoke-virtual {v1, p1, p2}, Lf1/s;->b0(II)V

    :goto_0
    return-void

    .line 9
    :cond_4
    invoke-virtual {p0, v0}, Lf1/o;->o(I)I

    move-result v2

    if-nez p2, :cond_5

    if-eq v2, p1, :cond_5

    return-void

    .line 10
    :cond_5
    iget-object p1, p0, Lf1/o;->j:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseIntArray;->append(II)V

    .line 11
    invoke-virtual {p0, v0}, Lf1/o;->o(I)I

    move-result p1

    if-eqz v1, :cond_7

    .line 12
    invoke-virtual {v1}, Lf1/q;->t()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======>> syncVideoId(int what, int channel) ==>> fixCamera camera index : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " toId: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dev.imagType: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lf1/q;->i:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "DeviceManager"

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_6

    .line 14
    iget p2, v1, Lf1/q;->i:I

    if-ne p2, p1, :cond_6

    const/4 p1, 0x1

    .line 15
    invoke-virtual {v1, p2, p1}, Lf1/q;->T(II)V

    goto :goto_1

    .line 16
    :cond_6
    invoke-virtual {p0, v0, p1}, Lf1/o;->f(II)Z

    :cond_7
    :goto_1
    return-void
.end method

.method public G(III)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========================>>000 videoChannel videoId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DeviceManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Lf1/o;->d(I)Lf1/q;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========================>>001 videoChannel videoId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dev: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 4
    iget v0, p0, Lf1/o;->i:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lf1/q;->E()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    .line 5
    :goto_0
    iget v1, p0, Lf1/o;->i:I

    if-ne p2, v1, :cond_1

    if-ne p2, p3, :cond_1

    const/4 p3, 0x1

    .line 6
    :cond_1
    invoke-virtual {p1, v0, p3}, Lf1/q;->T(II)V

    :cond_2
    return-void
.end method

.method public b(ILjava/lang/String;Lf1/o$d;)V
    .locals 9

    .line 1
    const-class v0, Landroid/os/Handler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==>> addImageChip() index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " i2cDevPath : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lf1/o$d;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Dev Class:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lf1/o$d;->d:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " I2c Class: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lf1/o$d;->e:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "DeviceManager"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p2, p3, Lf1/o$d;->a:Ljava/lang/String;

    invoke-static {p2}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lf1/o;->g:Ljava/util/HashMap;

    iget-object v2, p3, Lf1/o$d;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp1/a;

    :goto_0
    if-nez p2, :cond_1

    .line 3
    iget-object v2, p3, Lf1/o$d;->a:Ljava/lang/String;

    invoke-static {v2}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    new-instance p2, Lj1/a;

    iget-object v2, p3, Lf1/o$d;->e:Ljava/lang/Class;

    invoke-direct {p2, v2}, Lj1/a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2}, Lj1/a;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp1/a;

    .line 5
    iget-object v2, p3, Lf1/o$d;->a:Ljava/lang/String;

    invoke-interface {p2, v2}, Lp1/a;->b(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lf1/o;->g:Ljava/util/HashMap;

    iget-object v3, p3, Lf1/o$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object v2, p3, Lf1/o$d;->d:Ljava/lang/Class;

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p2, :cond_2

    .line 8
    new-instance v5, Lj1/a;

    invoke-direct {v5, v2}, Lj1/a;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v8, Lp1/a;

    aput-object v8, v6, v1

    aput-object v7, v6, v4

    const/4 v7, 0x3

    aput-object v0, v6, v7

    .line 9
    invoke-virtual {v5, v6}, Lj1/a;->c([Ljava/lang/Class;)Lj1/a;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object p2, v2, v1

    iget p2, p3, Lf1/o$d;->b:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v4

    iget-object p2, p3, Lf1/o$d;->c:Landroid/os/Handler;

    aput-object p2, v2, v7

    invoke-virtual {v0, v2}, Lj1/a;->d([Ljava/lang/Object;)Lj1/a;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lj1/a;->b()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lf1/q;

    goto :goto_1

    .line 12
    :cond_2
    new-instance p2, Lj1/a;

    invoke-direct {p2, v2}, Lj1/a;-><init>(Ljava/lang/Class;)V

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    aput-object v0, v2, v1

    .line 13
    invoke-virtual {p2, v2}, Lj1/a;->c([Ljava/lang/Class;)Lj1/a;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    iget-object p3, p3, Lf1/o$d;->c:Landroid/os/Handler;

    aput-object p3, v0, v1

    invoke-virtual {p2, v0}, Lj1/a;->d([Ljava/lang/Object;)Lj1/a;

    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lj1/a;->b()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lf1/q;

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {p0, p1, v1}, Lf1/o;->z(ILf1/q;)V

    :cond_4
    return-void
.end method

.method public c(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/o;->f:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public d(I)Lf1/q;
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/o;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf1/o$a;

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p1, Lf1/o$a;->a:Lf1/q;

    :cond_0
    return-object v1
.end method

.method public e(I)Lf1/q;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/o$a;

    .line 3
    iget-object v1, v1, Lf1/o$a;->a:Lf1/q;

    if-eqz v1, :cond_0

    iget v2, v1, Lf1/q;->G:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(II)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========================>> fixCamera(int index, int channel) index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lf1/o;->k:Z

    if-nez v0, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, p1

    .line 5
    :goto_0
    iget v4, p0, Lf1/o;->h:I

    if-ne v0, v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    .line 6
    :goto_1
    sget v5, Lu0/b;->o:I

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 7
    iget p2, p0, Lf1/o;->i:I

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    .line 8
    sget v5, Lu0/b;->n4:I

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move p2, v3

    .line 9
    :goto_3
    iget v5, p0, Lf1/o;->i:I

    if-ne p2, v5, :cond_6

    .line 10
    invoke-virtual {p0, v0, p2, v5}, Lf1/o;->G(III)V

    .line 11
    :cond_6
    invoke-virtual {p0, v0}, Lf1/o;->d(I)Lf1/q;

    move-result-object v0

    if-nez v0, :cond_7

    .line 12
    iget-boolean p1, p0, Lf1/o;->k:Z

    return p1

    :cond_7
    if-eqz v4, :cond_8

    .line 13
    invoke-virtual {v0}, Lf1/q;->u()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    move v2, v3

    .line 14
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "========================>>000 fixCamera videoId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   index: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reversing: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_d

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lf1/q;->i:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dev readyToReversing: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lf1/q;->x:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isSupportReversing:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lf1/q;->D:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget p1, v0, Lf1/q;->i:I

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Lf1/q;->u()Z

    move-result p1

    if-nez p1, :cond_9

    .line 17
    invoke-virtual {v0}, Lf1/q;->R()V

    .line 18
    invoke-virtual {v0}, Lf1/q;->a()V

    const-wide/16 v3, 0x14

    .line 19
    invoke-static {v3, v4}, La/i;->a0(J)V

    :cond_9
    if-eqz v2, :cond_a

    .line 20
    iget p1, p0, Lf1/o;->i:I

    if-eq p2, p1, :cond_b

    :cond_a
    if-nez v2, :cond_f

    iget p1, p0, Lf1/o;->i:I

    if-eq p2, p1, :cond_f

    .line 21
    :cond_b
    iget p1, p0, Lf1/o;->i:I

    if-ne p2, p1, :cond_c

    .line 22
    invoke-virtual {v0}, Lf1/q;->E()I

    move-result p2

    .line 23
    :cond_c
    invoke-virtual {v0, p2}, Lf1/q;->c(I)V

    .line 24
    invoke-virtual {v0}, Lf1/q;->Q()V

    goto :goto_5

    :cond_d
    if-nez v2, :cond_e

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "========================>>002 fixCamera videoId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lf1/q;->i:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-boolean p1, v0, Lf1/q;->r:Z

    if-eqz p1, :cond_f

    .line 27
    invoke-virtual {v0}, Lf1/q;->R()V

    .line 28
    invoke-virtual {v0}, Lf1/q;->a()V

    goto :goto_5

    .line 29
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "========================>>003 fixCamera videoId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lf1/q;->i:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {v0}, Lf1/q;->R()V

    .line 31
    invoke-virtual {v0}, Lf1/q;->a()V

    .line 32
    invoke-virtual {v0}, Lf1/q;->E()I

    move-result p1

    invoke-virtual {v0, p1}, Lf1/q;->c(I)V

    .line 33
    invoke-virtual {v0}, Lf1/q;->Q()V

    .line 34
    :cond_f
    :goto_5
    iget-boolean p1, p0, Lf1/o;->k:Z

    return p1
.end method

.method public h(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/o;->c:Landroid/util/SparseArray;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public j(IIIII)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf1/o;->k:Z

    if-nez v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lf1/o;->c(I)I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lf1/o;->d(I)Lf1/q;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====>> imageParams() channel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " faceIndex = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " brightness = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " color = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " contrast = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cameraid: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  dev: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, p2, p3, p4, p5}, Le1/l;->h(IIII)V

    .line 6
    :cond_1
    iget-boolean p1, p0, Lf1/o;->k:Z

    return p1
.end method

.method public k()Z
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========================>> in() enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/o;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reversingCamera : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/o;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " chip size :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lf1/o;->k:Z

    if-nez v0, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lf1/o;->k:Z

    return v0

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 5
    iget-object v4, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 6
    invoke-virtual {p0, v4}, Lf1/o;->d(I)Lf1/q;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "========================>> call dev: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " in()  id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lf1/q;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {v4, v2}, Lf1/q;->H(Z)V

    .line 9
    invoke-virtual {v4}, Lf1/q;->b()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget-boolean v0, p0, Lf1/o;->k:Z

    return v0
.end method

.method public l(Lf1/o$e;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lf1/o;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lf1/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "DeviceManager"

    if-ge v2, v0, :cond_3

    .line 3
    iget-object v4, p0, Lf1/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 4
    iget-object v5, p0, Lf1/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5
    invoke-interface {p1, v4, v5}, Lf1/o$e;->d(ILjava/lang/String;)Lf1/o$d;

    move-result-object v6

    .line 6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "========>>initVideoChips video chip cameraid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " config : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_1

    const-string v8, "NULL"

    goto :goto_1

    :cond_1
    iget-object v8, v6, Lf1/o$d;->a:Ljava/lang/String;

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_2

    .line 7
    invoke-virtual {p0, v4, v5, v6}, Lf1/o;->b(ILjava/lang/String;Lf1/o$d;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lf1/o;->n()Z

    move-result v2

    .line 9
    iget-object v4, p0, Lf1/o;->d:Landroid/util/SparseArray;

    if-nez v4, :cond_4

    move v4, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    :goto_2
    if-lez v4, :cond_5

    .line 10
    new-array v5, v4, [Lf1/o$b;

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-lez v4, :cond_7

    .line 11
    new-array v5, v4, [Lf1/o$b;

    move v6, v1

    :goto_4
    if-ge v6, v4, :cond_7

    .line 12
    iget-object v7, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 13
    iget-object v8, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf1/o$a;

    if-nez v8, :cond_6

    move v8, v1

    goto :goto_5

    .line 14
    :cond_6
    iget-object v8, v8, Lf1/o$a;->a:Lf1/q;

    iget v8, v8, Lf1/q;->G:I

    .line 15
    :goto_5
    new-instance v9, Lf1/o$b;

    invoke-direct {v9, p0, v7, v8}, Lf1/o$b;-><init>(Lf1/o;II)V

    aput-object v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 16
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "========================>>initVideoChips video chip num: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne v4, v0, :cond_8

    .line 17
    iget-object v0, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lf1/o;->B(I)Z

    .line 18
    :cond_8
    invoke-interface {p1, v2, v5}, Lf1/o$e;->c(Z[Lf1/o$b;)V

    .line 19
    iget-object p1, p0, Lf1/o;->b:Lf1/o$c;

    if-nez p1, :cond_9

    return-void

    :cond_9
    :goto_6
    if-ge v1, v4, :cond_b

    .line 20
    iget-object p1, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    .line 21
    iget-object v0, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf1/o$a;

    .line 22
    iget-object p1, p1, Lf1/o$a;->a:Lf1/q;

    if-eqz p1, :cond_a

    .line 23
    iget-object v0, p0, Lf1/o;->b:Lf1/o$c;

    invoke-interface {v0, p1}, Lf1/o$c;->x0(Lf1/q;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/o;->k:Z

    return v0
.end method

.method public n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final o(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/o;->j:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public p(ZI)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========================>> onReset() enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DeviceManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lf1/o;->k:Z

    if-nez v0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lf1/o;->d(I)Lf1/q;

    move-result-object v0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dev:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0, p1}, Lf1/q;->J(Z)V

    if-eqz p1, :cond_3

    .line 6
    instance-of p1, v0, Lf1/s;

    if-eqz p1, :cond_1

    .line 7
    check-cast v0, Lf1/s;

    invoke-virtual {v0}, Lf1/s;->f0()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, p2}, Lf1/o;->o(I)I

    move-result p1

    .line 9
    instance-of p2, v0, Lf1/a;

    if-eqz p2, :cond_2

    const/16 p1, 0xa

    .line 10
    :cond_2
    invoke-virtual {p0, p1, p1}, Lf1/o;->F(II)V

    .line 11
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lf1/o;->k:Z

    return p1
.end method

.method public q(Z)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========================>> onReversing() enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/o;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reversingCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/o;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lf1/o;->k:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget v0, p0, Lf1/o;->h:I

    invoke-virtual {p0, v0}, Lf1/o;->d(I)Lf1/q;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========================>> onReversing() ImageDevice2 dev = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lf1/q;->I(Z)V

    .line 6
    :cond_1
    iget-boolean p1, p0, Lf1/o;->k:Z

    return p1
.end method

.method public r()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========================>> out() enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/o;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lf1/o;->k:Z

    if-nez v0, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lf1/o;->k:Z

    return v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 5
    iget-object v2, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 6
    invoke-virtual {p0, v2}, Lf1/o;->d(I)Lf1/q;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Lf1/q;->R()V

    .line 8
    invoke-virtual {v2}, Lf1/q;->d()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget-boolean v0, p0, Lf1/o;->k:Z

    return v0
.end method

.method public s()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/o;->e:Landroid/util/SparseArray;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public t(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lf1/o;->e:Landroid/util/SparseArray;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lf1/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3
    iget-object v2, p0, Lf1/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    if-ltz v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public u(Ly/b;I)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lf1/o;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lbase/b;->L2()Lo1/x;

    move-result-object v2

    :cond_2
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_8

    .line 5
    iget-object v4, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 6
    invoke-virtual {p0, v4}, Lf1/o;->d(I)Lf1/q;

    move-result-object v4

    .line 7
    invoke-virtual {v4, p2, p1}, Lf1/q;->C(ILy/b;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v5, 0xad

    if-eq p2, v5, :cond_6

    const/16 v5, 0xae

    if-eq p2, v5, :cond_5

    const/4 v5, 0x2

    const-string v6, " videoId: "

    const-string v7, "  chipId : "

    const-string v8, "   ==========>>>register()  "

    const-string v9, "Signal"

    const/4 v10, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    .line 8
    :pswitch_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lf1/q;->h:I

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lf1/q;->j:I

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ntscPal: "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lf1/q;->l:I

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7

    new-array v5, v5, [I

    .line 9
    iget v6, v4, Lf1/q;->l:I

    aput v6, v5, v1

    iget v4, v4, Lf1/q;->j:I

    aput v4, v5, v10

    invoke-virtual {v2, p1, p2, v5}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_2

    .line 10
    :pswitch_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lf1/q;->h:I

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lf1/q;->j:I

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " imageSignal: "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lf1/q;->n:Z

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7

    new-array v5, v5, [I

    .line 11
    iget-boolean v6, v4, Lf1/q;->n:Z

    aput v6, v5, v1

    iget v4, v4, Lf1/q;->j:I

    aput v4, v5, v10

    invoke-virtual {v2, p1, p2, v5}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_2

    .line 12
    :pswitch_2
    iget v5, v4, Lf1/q;->j:I

    if-lez v5, :cond_4

    goto :goto_1

    :cond_4
    move v10, v1

    :goto_1
    if-eqz v2, :cond_7

    .line 13
    invoke-virtual {v4, v5, v10}, Lf1/q;->y(II)[I

    move-result-object v4

    invoke-virtual {v2, p1, p2, v4}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {v4, p2, p1}, Lf1/q;->C(ILy/b;)Z

    goto :goto_2

    .line 15
    :cond_6
    iget-boolean v5, v4, Lf1/q;->E:Z

    if-eqz v5, :cond_7

    .line 16
    invoke-virtual {v4, p1}, Lf1/q;->U(Ly/b;)V

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public v(Lf1/o$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/o;->b:Lf1/o$c;

    return-void
.end method

.method public w(II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lf1/o;->d(I)Lf1/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lf1/o;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    invoke-virtual {v0, p1}, Lf1/q;->j(I)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chip id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", ImageDevice2 is NULL!! "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf1/o;->k:Z

    return-void
.end method

.method public y(ILf1/q$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf1/o;->d(I)Lf1/q;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lf1/q;->L(Lf1/q$b;)V

    :cond_0
    return-void
.end method

.method public z(ILf1/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/o;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/o$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lf1/o$a;

    invoke-direct {v0, p0, p2}, Lf1/o$a;-><init>(Lf1/o;Lf1/q;)V

    .line 3
    iget-object p2, p0, Lf1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p2}, Lf1/o$a;->a(Lf1/q;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iput-object p2, v0, Lf1/o$a;->a:Lf1/q;

    :cond_1
    :goto_0
    return-void
.end method
