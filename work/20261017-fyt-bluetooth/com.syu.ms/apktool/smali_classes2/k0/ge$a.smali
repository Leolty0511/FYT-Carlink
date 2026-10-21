.class public Lk0/ge$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ge;


# direct methods
.method public constructor <init>(Lk0/ge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ge$a;->a:Lk0/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->o:I

    const/16 v1, 0x3f1

    const/16 v2, 0xc0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    new-array v0, v4, [I

    aput v4, v0, v3

    .line 2
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    aput v3, v0, v3

    .line 3
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v0, v4, [I

    aput v3, v0, v3

    .line 4
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    const/4 v2, 0x2

    aput v2, v0, v3

    .line 5
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    :goto_0
    return-void
.end method
