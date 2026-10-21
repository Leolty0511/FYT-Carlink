.class Landroid/view/textservice/SpellCheckerSession$InternalListener;
.super Ls/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalListener"
.end annotation


# instance fields
.field private final mParentSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;


# direct methods
.method public constructor <init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls/e$a;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$InternalListener;->mParentSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Ls/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$InternalListener;->mParentSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->onServiceConnected(Ls/b;)V

    return-void
.end method
