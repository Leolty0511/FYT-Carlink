.class public final Le0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/g;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Le0/j;->a:I

    iput-object p1, p0, Le0/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    iget v0, p0, Le0/j;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Le0/j;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :pswitch_0
    check-cast v1, Lz/p;

    .line 10
    .line 11
    const-string v0, "block"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Le0/h;

    .line 17
    .line 18
    invoke-direct {v0}, Le0/h;-><init>()V

    .line 19
    .line 20
    .line 21
    instance-of v2, v1, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    check-cast v1, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    .line 26
    .line 27
    invoke-virtual {v1, v0, v0}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->create(Ljava/lang/Object;Lu/c;)Lu/c;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v2, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;

    .line 33
    .line 34
    invoke-direct {v2, v0, v1, v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;-><init>(Lu/c;Lz/p;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    move-object v1, v2

    .line 38
    :goto_0
    iput-object v1, v0, Le0/h;->e:Lu/c;

    .line 39
    .line 40
    return-object v0

    .line 41
    :goto_1
    check-cast v1, Ljava/util/Iterator;

    .line 42
    .line 43
    return-object v1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
