.class public Lu0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lu0/f;->d()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\u8bf7\u6c42\u8fdb\u5165 \u5347\u7ea7\u6a21\u5f0f"

    .line 2
    invoke-static {v0}, Lu0/f;->k(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lz/a;->b:Lo1/e0;

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->b([I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lo1/e0;->i([B)V

    new-array v2, v1, [I

    .line 4
    fill-array-data v2, :array_1

    invoke-static {v2}, Lz/k;->b([I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lo1/e0;->i([B)V

    new-array v1, v1, [I

    .line 5
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->b([I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lo1/e0;->i([B)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Lu0/d;->a3(Ljava/lang/Runnable;)V

    .line 7
    invoke-static {}, Lu0/f;->a()I

    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Lu0/f;->m(I)I

    const/16 v0, 0x9

    invoke-static {v0}, Lu0/f;->c(I)I

    .line 9
    invoke-static {}, Lu0/f;->n()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lu0/d;->m(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x55
        0xee
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x55
        0x99
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x55
        0x44
    .end array-data
.end method
