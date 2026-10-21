.class public Lk0/z5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/z5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/z5;


# direct methods
.method public constructor <init>(Lk0/z5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/z5$a;->a:Lk0/z5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/z5$a;->a:Lk0/z5;

    iget v1, v0, Lk0/z5;->C:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/z5;->C:I

    const/4 v3, 0x2

    .line 2
    rem-int/2addr v1, v3

    if-ne v1, v2, :cond_2

    .line 3
    sget v1, Lu0/b;->D:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 4
    :cond_0
    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, v0, Lk0/z5;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lk0/z5$a;->a:Lk0/z5;

    const/16 v1, 0x70

    sget-object v2, Lu0/b;->i3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lk0/z5;->u3(Lk0/z5;BLjava/lang/String;)V

    .line 7
    iget-object v0, p0, Lk0/z5$a;->a:Lk0/z5;

    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    iput-object v1, v0, Lk0/z5;->D:Ljava/lang/String;

    .line 8
    :cond_1
    sget-object v0, Lu0/b;->j3:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Lk0/z5$a;->a:Lk0/z5;

    iget-object v1, v1, Lk0/z5;->E:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lk0/z5$a;->a:Lk0/z5;

    const/16 v1, 0x71

    sget-object v2, Lu0/b;->j3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lk0/z5;->u3(Lk0/z5;BLjava/lang/String;)V

    .line 11
    iget-object v0, p0, Lk0/z5$a;->a:Lk0/z5;

    sget-object v1, Lu0/b;->j3:Ljava/lang/String;

    iput-object v1, v0, Lk0/z5;->E:Ljava/lang/String;

    .line 12
    :cond_2
    iget-object v0, p0, Lk0/z5$a;->a:Lk0/z5;

    iget v1, v0, Lk0/z5;->C:I

    if-le v1, v3, :cond_3

    const/4 v1, 0x0

    .line 13
    iput v1, v0, Lk0/z5;->C:I

    :cond_3
    return-void
.end method
