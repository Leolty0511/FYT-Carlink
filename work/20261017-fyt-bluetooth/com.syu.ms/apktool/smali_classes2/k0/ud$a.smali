.class public Lk0/ud$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ud;


# direct methods
.method public constructor <init>(Lk0/ud;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ud$a;->a:Lk0/ud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Ly0/f;->c:I

    .line 2
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x1f

    const/16 v3, 0x1c

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    if-le v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    if-le v0, v2, :cond_1

    move v0, v2

    :cond_1
    :goto_0
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v2, -0x3c

    aput v2, v1, v4

    const/4 v2, 0x2

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v0, v1, v2

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method
