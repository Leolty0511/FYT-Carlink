.class public Lk0/lr$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/lr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/lr;


# direct methods
.method public constructor <init>(Lk0/lr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/lr$a;->a:Lk0/lr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/lr$a;->a:Lk0/lr;

    iget v1, v0, Lk0/lr;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/lr;->e:I

    const/4 v3, 0x2

    .line 2
    rem-int/2addr v1, v3

    if-ne v1, v2, :cond_4

    .line 3
    sget v1, Lu0/b;->D:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 4
    :cond_0
    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    const-string v2, "Unknow"

    const/16 v4, 0x70

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, v0, Lk0/lr;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lk0/lr$a;->a:Lk0/lr;

    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    invoke-static {v0, v4, v1}, Lk0/lr;->a3(Lk0/lr;BLjava/lang/String;)V

    .line 7
    iget-object v0, p0, Lk0/lr$a;->a:Lk0/lr;

    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    iput-object v1, v0, Lk0/lr;->f:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0, v4, v2}, Lk0/lr;->a3(Lk0/lr;BLjava/lang/String;)V

    .line 9
    :cond_2
    :goto_0
    sget-object v0, Lu0/b;->j3:Ljava/lang/String;

    const/16 v1, 0x71

    if-eqz v0, :cond_3

    .line 10
    iget-object v2, p0, Lk0/lr$a;->a:Lk0/lr;

    iget-object v2, v2, Lk0/lr;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lk0/lr$a;->a:Lk0/lr;

    sget-object v2, Lu0/b;->j3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lk0/lr;->a3(Lk0/lr;BLjava/lang/String;)V

    .line 12
    iget-object v0, p0, Lk0/lr$a;->a:Lk0/lr;

    sget-object v1, Lu0/b;->j3:Ljava/lang/String;

    iput-object v1, v0, Lk0/lr;->g:Ljava/lang/String;

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lk0/lr$a;->a:Lk0/lr;

    invoke-static {v0, v1, v2}, Lk0/lr;->a3(Lk0/lr;BLjava/lang/String;)V

    .line 14
    :cond_4
    :goto_1
    iget-object v0, p0, Lk0/lr$a;->a:Lk0/lr;

    iget v1, v0, Lk0/lr;->e:I

    if-le v1, v3, :cond_5

    const/4 v1, 0x0

    .line 15
    iput v1, v0, Lk0/lr;->e:I

    :cond_5
    return-void
.end method
