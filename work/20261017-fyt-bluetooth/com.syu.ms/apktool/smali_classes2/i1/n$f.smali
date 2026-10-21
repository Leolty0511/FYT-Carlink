.class public Li1/n$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/n;


# direct methods
.method public constructor <init>(Li1/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/n$f;->a:Li1/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 4

    .line 1
    :try_start_0
    check-cast p1, [I

    .line 2
    iget-object v0, p0, Li1/n$f;->a:Li1/n;

    iget-object v0, v0, Li1/n;->s:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    aget v2, p1, v1

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x6

    .line 4
    aget p1, p1, v3

    aput p1, v0, v1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x7

    .line 5
    aget p1, p1, v3

    aput p1, v0, v1

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    .line 6
    aget p1, p1, v3

    aput p1, v0, v1

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x3

    .line 7
    aget p1, p1, v3

    aput p1, v0, v1

    goto :goto_0

    .line 8
    :pswitch_4
    aget v1, p1, v1

    add-int/lit8 v1, v1, -0xe

    .line 9
    aget p1, p1, v3

    aput p1, v0, v1

    .line 10
    :goto_0
    iget-object p1, p0, Li1/n$f;->a:Li1/n;

    iget-object p1, p1, Li1/n;->s:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 11
    iget-object p1, p0, Li1/n$f;->a:Li1/n;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p1, Li1/n;->s:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
