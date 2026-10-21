.class public Lm0/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm0/w;


# direct methods
.method public constructor <init>(Lm0/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/w$a;->a:Lm0/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lm0/w$a;->a:Lm0/w;

    invoke-static {v0}, Lm0/w;->N2(Lm0/w;)I

    move-result v0

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Lm0/w$a;->a:Lm0/w;

    invoke-static {v0}, Lm0/w;->Q2(Lm0/w;)I

    .line 3
    iget-object v0, p0, Lm0/w$a;->a:Lm0/w;

    invoke-static {v0}, Lm0/w;->O2(Lm0/w;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lm0/w$a;->a:Lm0/w;

    invoke-static {v0, v2}, Lm0/w;->P2(Lm0/w;I)I

    .line 5
    iget-object v0, p0, Lm0/w$a;->a:Lm0/w;

    invoke-static {v0}, Lm0/w;->R2(Lm0/w;)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "CAN"

    const-string v1, "REQUEST CANBUS UPDATE"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lm0/w$a;->a:Lm0/w;

    invoke-static {v0}, Lm0/w;->S2(Lm0/w;)I

    move-result v0

    const/4 v1, 0x7

    const/4 v3, 0x5

    const v4, 0x810126

    const/4 v5, 0x3

    if-ge v0, v5, :cond_3

    .line 8
    iget-object v0, p0, Lm0/w$a;->a:Lm0/w;

    invoke-static {v0}, Lm0/w;->S2(Lm0/w;)I

    move-result v0

    if-nez v0, :cond_2

    .line 9
    sget v0, Lk0/nt;->a:I

    if-ne v0, v4, :cond_1

    new-array v0, v1, [B

    .line 10
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->q([B)V

    goto :goto_0

    .line 11
    :cond_1
    sget-object v0, Ll0/z;->a:Ll0/a;

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Ll0/a;->f([I)V

    .line 12
    :cond_2
    :goto_0
    iget-object v0, p0, Lm0/w$a;->a:Lm0/w;

    invoke-static {v0}, Lm0/w;->U2(Lm0/w;)I

    goto :goto_2

    .line 13
    :cond_3
    iget-object v0, p0, Lm0/w$a;->a:Lm0/w;

    invoke-static {v0}, Lm0/w;->S2(Lm0/w;)I

    move-result v0

    if-lt v0, v5, :cond_7

    .line 14
    iget-object v0, p0, Lm0/w$a;->a:Lm0/w;

    invoke-static {v0}, Lm0/w;->S2(Lm0/w;)I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 15
    sget v0, Lk0/nt;->a:I

    if-ne v0, v4, :cond_4

    new-array v0, v1, [B

    .line 16
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->q([B)V

    goto :goto_1

    .line 17
    :cond_4
    sget-object v0, Ll0/z;->a:Ll0/a;

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    invoke-virtual {v0, v1}, Ll0/a;->f([I)V

    .line 18
    :cond_5
    :goto_1
    iget-object v0, p0, Lm0/w$a;->a:Lm0/w;

    invoke-static {v0}, Lm0/w;->U2(Lm0/w;)I

    .line 19
    iget-object v0, p0, Lm0/w$a;->a:Lm0/w;

    invoke-static {v0}, Lm0/w;->S2(Lm0/w;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 20
    iget-object v0, p0, Lm0/w$a;->a:Lm0/w;

    invoke-static {v0, v2}, Lm0/w;->T2(Lm0/w;I)I

    goto :goto_2

    .line 21
    :cond_6
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :cond_7
    :goto_2
    return-void

    :array_0
    .array-data 1
        0x5at
        -0x5bt
        0x2t
        -0x20t
        0x0t
        0x0t
        -0x1ft
    .end array-data

    :array_1
    .array-data 4
        0x2e
        0x2
        -0x20
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 1
        0x5at
        -0x5bt
        0x2t
        -0x20t
        0x0t
        0x0t
        -0x1ft
    .end array-data

    :array_3
    .array-data 4
        0x2e
        0x2
        -0x20
        0x0
        0x0
    .end array-data
.end method
