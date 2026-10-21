.class public Lk0/id$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/id;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/id;


# direct methods
.method public constructor <init>(Lk0/id;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/id$a;->a:Lk0/id;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/id$a;->a:Lk0/id;

    invoke-virtual {v0}, Lk0/id;->a3()V

    return-void
.end method
