.class Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;
.super Ls/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpellCheckerServiceBinder"
.end annotation


# instance fields
.field private final mInternalServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/textservice/SpellCheckerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/service/textservice/SpellCheckerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls/a$a;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;->mInternalServiceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getISpellCheckerSession(Ljava/lang/String;Ls/c;Landroid/os/Bundle;)Ls/b;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;->mInternalServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/textservice/SpellCheckerService;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/service/textservice/SpellCheckerService;->createSession()Landroid/service/textservice/SpellCheckerService$Session;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    invoke-direct {v1, p1, p2, p3, v0}, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;-><init>(Ljava/lang/String;Ls/c;Landroid/os/Bundle;Landroid/service/textservice/SpellCheckerService$Session;)V

    .line 4
    invoke-virtual {v0}, Landroid/service/textservice/SpellCheckerService$Session;->onCreate()V

    return-object v1
.end method
