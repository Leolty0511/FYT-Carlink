.class public Lk0/eh$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/eh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/eh;


# direct methods
.method public constructor <init>(Lk0/eh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/eh$b;->a:Lk0/eh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, 0x88

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 1
    sget v1, Ly0/f;->C0:I

    or-int/lit16 v1, v1, 0x80

    const/4 v2, 0x3

    aput v1, v0, v2

    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
