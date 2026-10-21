.class public Lu0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lu0/a;


# direct methods
.method public constructor <init>(Lu0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu0/a$b;->b:Lu0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x7

    .line 2
    iput p1, p0, Lu0/a$b;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iput v3, p0, Lu0/a$b;->a:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lu0/a$b;->a:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    .line 4
    iput v0, p0, Lu0/a$b;->a:I

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    .line 5
    iput v0, p0, Lu0/a$b;->a:I

    goto :goto_0

    .line 6
    :pswitch_4
    iput v4, p0, Lu0/a$b;->a:I

    goto :goto_0

    .line 7
    :pswitch_5
    iput v2, p0, Lu0/a$b;->a:I

    goto :goto_0

    .line 8
    :pswitch_6
    iput v1, p0, Lu0/a$b;->a:I

    :goto_0
    new-array v0, v2, [I

    aput v4, v0, v1

    const/16 v1, 0x37

    aput v1, v0, v4

    .line 9
    iget v1, p0, Lu0/a$b;->a:I

    aput v1, v0, v3

    invoke-static {v0}, Lz/k;->s([I)V

    .line 10
    sget v0, Lh0/c;->G:I

    if-ne v0, v4, :cond_0

    sget v0, Lu0/b;->D:I

    if-eq v0, v3, :cond_0

    .line 11
    iget-object v0, p0, Lu0/a$b;->b:Lu0/a;

    invoke-virtual {v0, v3}, Lu0/a;->c(I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
