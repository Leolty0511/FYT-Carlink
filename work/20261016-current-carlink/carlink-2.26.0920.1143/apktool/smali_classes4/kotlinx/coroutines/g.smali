.class public final Lkotlinx/coroutines/g;
.super Lkotlinx/coroutines/b;
.source "SourceFile"


# static fields
.field public static final synthetic c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/g;

    invoke-direct {v0}, Lkotlinx/coroutines/g;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lu/g;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sget-object p2, Lg0/h;->b:Le/b;

    .line 2
    .line 3
    invoke-interface {p1, p2}, Lu/g;->get(Lu/f;)Lu/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/renderscript/a;->h(Lu/e;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 11
    .line 12
    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Unconfined"

    return-object v0
.end method
