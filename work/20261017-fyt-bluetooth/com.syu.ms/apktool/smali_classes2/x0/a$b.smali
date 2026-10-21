.class public Lx0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx0/a;


# direct methods
.method public constructor <init>(Lx0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0/a$b;->a:Lx0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    sget v0, Lu0/b;->X1:I

    sget v1, Lx0/a;->I0:I

    sub-int/2addr v0, v1

    sput v0, Lx0/a;->K0:I

    const/16 v1, 0x64

    const/16 v2, 0x46

    const/16 v3, 0x28

    const/16 v4, 0x14

    const/4 v5, 0x6

    const/16 v6, 0x19

    if-lez v0, :cond_5

    .line 2
    sget v0, Lu0/b;->X1:I

    const/16 v7, 0xa

    if-ge v0, v7, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v7, 0x5

    if-ge v0, v4, :cond_1

    .line 3
    sget v0, Lx0/a;->K0:I

    if-lt v0, v7, :cond_c

    .line 4
    sput v6, Lx0/a;->J0:I

    goto/16 :goto_0

    :cond_1
    if-ge v0, v3, :cond_2

    .line 5
    sget v0, Lx0/a;->K0:I

    if-lt v0, v5, :cond_c

    .line 6
    sput v6, Lx0/a;->J0:I

    goto :goto_0

    :cond_2
    if-ge v0, v2, :cond_3

    .line 7
    sget v0, Lx0/a;->K0:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_c

    .line 8
    sput v6, Lx0/a;->J0:I

    goto :goto_0

    :cond_3
    if-ge v0, v1, :cond_4

    .line 9
    sget v0, Lx0/a;->K0:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_c

    .line 10
    sput v6, Lx0/a;->J0:I

    goto :goto_0

    .line 11
    :cond_4
    sget v0, Lx0/a;->K0:I

    if-lt v0, v7, :cond_c

    .line 12
    sput v6, Lx0/a;->J0:I

    goto :goto_0

    :cond_5
    if-gez v0, :cond_b

    .line 13
    sget v0, Lu0/b;->X1:I

    if-ge v0, v5, :cond_6

    goto :goto_0

    :cond_6
    if-ge v0, v4, :cond_7

    .line 14
    sget v0, Lx0/a;->K0:I

    const/4 v1, -0x5

    if-gt v0, v1, :cond_c

    .line 15
    sput v6, Lx0/a;->J0:I

    goto :goto_0

    :cond_7
    if-ge v0, v3, :cond_8

    .line 16
    sget v0, Lx0/a;->K0:I

    const/4 v1, -0x6

    if-gt v0, v1, :cond_c

    .line 17
    sput v6, Lx0/a;->J0:I

    goto :goto_0

    :cond_8
    if-ge v0, v2, :cond_9

    .line 18
    sget v0, Lx0/a;->K0:I

    const/4 v1, -0x7

    if-gt v0, v1, :cond_c

    .line 19
    sput v6, Lx0/a;->J0:I

    goto :goto_0

    :cond_9
    const/4 v2, -0x8

    if-ge v0, v1, :cond_a

    .line 20
    sget v0, Lx0/a;->K0:I

    if-gt v0, v2, :cond_c

    .line 21
    sput v6, Lx0/a;->J0:I

    goto :goto_0

    .line 22
    :cond_a
    sget v0, Lx0/a;->K0:I

    if-gt v0, v2, :cond_c

    .line 23
    sput v6, Lx0/a;->J0:I

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    .line 24
    sput v0, Lx0/a;->J0:I

    .line 25
    :cond_c
    :goto_0
    sget v0, Lu0/b;->X1:I

    sput v0, Lx0/a;->I0:I

    return-void
.end method
