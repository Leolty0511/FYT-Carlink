.class public final synthetic Lcom/android/internal/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/a;->b:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/a;->b:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    check-cast p1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->a(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)Z

    move-result p1

    return p1
.end method
