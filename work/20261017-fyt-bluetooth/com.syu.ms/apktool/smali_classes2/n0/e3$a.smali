.class public Ln0/e3$a;
.super Lc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ln0/e3;


# direct methods
.method public constructor <init>(Ln0/e3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/e3$a;->e:Ln0/e3;

    invoke-direct {p0}, Lc/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x201

    if-eq p1, v0, :cond_0

    const/16 v0, 0x213

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    const/16 v0, 0x84

    new-array v3, v2, [I

    aput p1, v3, v1

    .line 1
    invoke-static {v0, v3}, Lu0/d;->I3(I[I)V

    move v1, v2

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x242
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
