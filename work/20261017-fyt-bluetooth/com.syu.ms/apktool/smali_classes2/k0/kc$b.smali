.class public Lk0/kc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/kc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/kc;


# direct methods
.method public constructor <init>(Lk0/kc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/kc$b;->a:Lk0/kc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/kc$b;->a:Lk0/kc;

    invoke-static {v0}, Lk0/kc;->g3(Lk0/kc;)V

    return-void
.end method
