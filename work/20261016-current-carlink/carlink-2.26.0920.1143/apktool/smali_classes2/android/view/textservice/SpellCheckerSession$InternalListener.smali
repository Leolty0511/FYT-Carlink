.class final Landroid/view/textservice/SpellCheckerSession$InternalListener;
.super Lcom/android/internal/textservice/ITextServicesSessionListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalListener"
.end annotation


# instance fields
.field private final mParentSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;


# direct methods
.method public constructor <init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesSessionListener$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$InternalListener;->mParentSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$InternalListener;->mParentSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V

    return-void
.end method
