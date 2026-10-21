.class public final synthetic Lcom/google/android/projection/protocol/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/projection/protocol/InputOutputThreads;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/projection/protocol/InputOutputThreads;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/projection/protocol/b;->b:Lcom/google/android/projection/protocol/InputOutputThreads;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/b;->b:Lcom/google/android/projection/protocol/InputOutputThreads;

    invoke-static {v0}, Lcom/google/android/projection/protocol/InputOutputThreads;->a(Lcom/google/android/projection/protocol/InputOutputThreads;)V

    return-void
.end method
