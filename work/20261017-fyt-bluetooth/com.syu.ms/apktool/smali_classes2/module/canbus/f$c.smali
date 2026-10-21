.class public Lmodule/canbus/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/f;


# direct methods
.method public constructor <init>(Lmodule/canbus/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/f$c;->a:Lmodule/canbus/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/canbus/f$c;->a:Lmodule/canbus/f;

    iget v1, v0, Lmodule/canbus/f;->V:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lmodule/canbus/f;->V:I

    const/4 v3, 0x2

    .line 2
    rem-int/2addr v1, v3

    if-ne v1, v2, :cond_2

    .line 3
    sget v1, Lu0/b;->D:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 4
    :cond_0
    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, v0, Lmodule/canbus/f;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lmodule/canbus/f$c;->a:Lmodule/canbus/f;

    const/16 v1, 0x70

    sget-object v2, Lu0/b;->i3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lmodule/canbus/f;->w3(Lmodule/canbus/f;BLjava/lang/String;)V

    .line 7
    iget-object v0, p0, Lmodule/canbus/f$c;->a:Lmodule/canbus/f;

    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    iput-object v1, v0, Lmodule/canbus/f;->W:Ljava/lang/String;

    .line 8
    :cond_1
    sget-object v0, Lu0/b;->j3:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Lmodule/canbus/f$c;->a:Lmodule/canbus/f;

    iget-object v1, v1, Lmodule/canbus/f;->X:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lmodule/canbus/f$c;->a:Lmodule/canbus/f;

    const/16 v1, 0x71

    sget-object v2, Lu0/b;->j3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lmodule/canbus/f;->w3(Lmodule/canbus/f;BLjava/lang/String;)V

    .line 11
    iget-object v0, p0, Lmodule/canbus/f$c;->a:Lmodule/canbus/f;

    sget-object v1, Lu0/b;->j3:Ljava/lang/String;

    iput-object v1, v0, Lmodule/canbus/f;->X:Ljava/lang/String;

    .line 12
    :cond_2
    iget-object v0, p0, Lmodule/canbus/f$c;->a:Lmodule/canbus/f;

    iget v1, v0, Lmodule/canbus/f;->V:I

    if-le v1, v3, :cond_3

    const/4 v1, 0x0

    .line 13
    iput v1, v0, Lmodule/canbus/f;->V:I

    .line 14
    :cond_3
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    const/4 v2, 0x7

    if-eq v0, v2, :cond_5

    const/16 v2, 0x16

    if-eq v0, v2, :cond_4

    const/16 v2, 0x17

    if-eq v0, v2, :cond_4

    goto :goto_0

    :cond_4
    new-array v0, v1, [I

    .line 15
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array v0, v1, [I

    .line 16
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x12
        0x2
        0x59
        0x11
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x12
        0x2
        0x59
        0x16
    .end array-data
.end method
